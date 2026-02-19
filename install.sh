#!/usr/bin/env bash
# 🐾 OpenClaw Agent Installer
# Install personality agents for OpenClaw AI assistant
set -euo pipefail

# Requires Bash 4+ for ${var,,} lowercase syntax
if (( BASH_VERSINFO[0] < 4 )); then
    echo "Error: Bash 4+ required (you have $BASH_VERSION)." >&2
    echo "On macOS: brew install bash" >&2
    exit 1
fi

VERSION="1.0.0"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS_DIR="$REPO_DIR/agents"
WORKSPACE="${OPENCLAW_WORKSPACE:-$HOME/.openclaw/workspace}"
LOCAL=false
FORCE=false

# Colors
R='\033[0;31m'    G='\033[0;32m'    Y='\033[0;33m'
B='\033[0;34m'    M='\033[0;35m'    C='\033[0;36m'
W='\033[1;37m'    D='\033[0;90m'    N='\033[0m'

# ─── Helpers ──────────────────────────────────────────────
die()   { echo -e "${R}✗ $1${N}" >&2; exit 1; }
info()  { echo -e "${C}ℹ ${N}$1"; }
ok()    { echo -e "${G}✓${N} $1"; }
warn()  { echo -e "${Y}⚠${N} $1"; }
bold()  { echo -e "${W}$1${N}"; }

banner() {
    echo -e "${M}"
    echo "  ┌─────────────────────────────────────────┐"
    echo "  │  🐾  OpenClaw Agent Installer  v$VERSION   │"
    echo "  │     172 AI personalities, one command    │"
    echo "  └─────────────────────────────────────────┘"
    echo -e "${N}"
}

# ─── Find agents ──────────────────────────────────────────
find_agents() {
    find "$AGENTS_DIR" -mindepth 2 -maxdepth 2 -type d 2>/dev/null | sort
}

get_agent_name() {
    local dir="$1"
    if [[ -f "$dir/metadata.json" ]] && command -v python3 &>/dev/null; then
        python3 -c "import json; d=json.load(open('$dir/metadata.json')); print(d.get('emoji','🤖'), d.get('name','$(basename "$dir")'))" 2>/dev/null || echo "🤖 $(basename "$dir")"
    else
        echo "🤖 $(basename "$dir")"
    fi
}

get_agent_meta() {
    local dir="$1" field="$2"
    if [[ -f "$dir/metadata.json" ]] && command -v python3 &>/dev/null; then
        python3 -c "import json; print(json.load(open('$dir/metadata.json')).get('$field',''))" 2>/dev/null
    fi
}

# ─── Fuzzy match ──────────────────────────────────────────
fuzzy_match() {
    local query="${1,,}"  # lowercase
    local matches=()
    
    while IFS= read -r dir; do
        local slug="$(basename "$dir")"
        local category="$(basename "$(dirname "$dir")")"
        local slug_lower="${slug,,}"
        local cat_lower="${category,,}"
        
        # Exact match on slug
        if [[ "$slug_lower" == "$query" ]]; then
            echo "$dir"
            return 0
        fi
        
        # Partial match
        if [[ "$slug_lower" == *"$query"* ]] || [[ "$cat_lower/$slug_lower" == *"$query"* ]]; then
            matches+=("$dir")
        fi
    done < <(find_agents)
    
    if [[ ${#matches[@]} -eq 1 ]]; then
        echo "${matches[0]}"
        return 0
    elif [[ ${#matches[@]} -gt 1 ]]; then
        echo -e "${Y}Multiple matches found:${N}" >&2
        for i in "${!matches[@]}"; do
            local name="$(get_agent_name "${matches[$i]}")"
            local cat="$(basename "$(dirname "${matches[$i]}")")"
            echo -e "  ${D}[$((i+1))]${N} $name ${D}($cat)${N}" >&2
        done
        echo "" >&2
        read -rp "$(echo -e "${C}Pick a number (1-${#matches[@]}): ${N}")" choice
        if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#matches[@]} )); then
            echo "${matches[$((choice-1))]}"
            return 0
        fi
        die "Invalid choice"
    fi
    
    return 1
}

# ─── List agents ──────────────────────────────────────────
list_agents() {
    banner
    bold "📋 Available Agents (107)"
    echo ""
    
    # Batch-read all metadata in one python3 call for performance
    python3 -c "
import json, os, sys, glob
agents_dir = '$AGENTS_DIR'
entries = []
for meta_path in sorted(glob.glob(os.path.join(agents_dir, '*', '*', 'metadata.json'))):
    d = os.path.dirname(meta_path)
    cat = os.path.basename(os.path.dirname(d))
    slug = os.path.basename(d)
    try:
        m = json.load(open(meta_path))
    except: m = {}
    emoji = m.get('emoji', '🤖')
    name = m.get('name', slug)
    liner = m.get('one_liner', '')
    if len(liner) > 50: liner = liner[:47] + '...'
    print(f'{cat}\t{emoji}\t{name}\t{liner}')
" 2>/dev/null | {
        local current_cat=""
        while IFS=$'\t' read -r cat emoji name liner; do
            if [[ "$cat" != "$current_cat" ]]; then
                current_cat="$cat"
                echo ""
                echo -e "  ${M}━━━ ${W}${cat}${M} ━━━${N}"
            fi
            printf "  %s %-24s ${D}%s${N}\n" "$emoji" "$name" "$liner"
        done
    }
    
    echo ""
    echo -e "  ${D}Install: ${G}./install.sh <agent-name>${N}"
    echo -e "  ${D}Search:  ${G}./install.sh --search <query>${N}"
    echo ""
}

# ─── Search agents ────────────────────────────────────────
search_agents() {
    local query="${1,,}"
    banner
    bold "🔍 Search: '$1'"
    echo ""
    
    # Batch search in one python3 call for performance
    local results
    results="$(python3 -c "
import json, os, glob
query = '''$query'''.lower()
agents_dir = '$AGENTS_DIR'
found = 0
for meta_path in sorted(glob.glob(os.path.join(agents_dir, '*', '*', 'metadata.json'))):
    d = os.path.dirname(meta_path)
    cat = os.path.basename(os.path.dirname(d))
    slug = os.path.basename(d)
    try:
        m = json.load(open(meta_path))
    except: m = {}
    name = m.get('name', slug)
    emoji = m.get('emoji', '🤖')
    liner = m.get('one_liner', '')
    tags = ' '.join(m.get('tags', [])) if isinstance(m.get('tags'), list) else str(m.get('tags', ''))
    searchable = f'{slug} {cat} {name} {liner} {tags}'.lower()
    if query in searchable:
        print(f'{emoji}\t{name}\t{cat}\t{liner}')
        found += 1
if found == 0:
    print('__NONE__')
" 2>/dev/null)"
    
    if [[ "$results" == "__NONE__" ]]; then
        warn "No agents found matching '$1'"
    else
        local count=0
        while IFS=$'\t' read -r emoji name cat liner; do
            printf "  %s ${W}%-24s${N} ${D}(%s)${N}\n" "$emoji" "$name" "$cat"
            [[ -n "$liner" ]] && echo -e "    ${D}$liner${N}"
            echo ""
            count=$((count + 1))
        done <<< "$results"
        ok "Found $count agent(s)"
    fi
}

# ─── Install agent ────────────────────────────────────────
install_agent() {
    local query="$1"
    
    local agent_dir
    agent_dir="$(fuzzy_match "$query")" || die "No agent found matching '$query'. Try: ./install.sh --list"
    
    local name="$(get_agent_meta "$agent_dir" name)"
    local emoji="$(get_agent_meta "$agent_dir" emoji)"
    local liner="$(get_agent_meta "$agent_dir" one_liner)"
    local cat="$(basename "$(dirname "$agent_dir")")"
    local slug="$(basename "$agent_dir")"
    
    [[ -z "$name" ]] && name="$slug"
    [[ -z "$emoji" ]] && emoji="🤖"
    
    banner
    
    # Preview
    echo -e "  ${W}Agent:${N}    $emoji $name"
    echo -e "  ${W}Category:${N} $cat"
    [[ -n "$liner" ]] && echo -e "  ${W}Vibe:${N}     $liner"
    echo ""
    
    # Show personality preview from SOUL.md
    if [[ -f "$agent_dir/SOUL.md" ]]; then
        echo -e "  ${M}── Personality Preview ──${N}"
        head -20 "$agent_dir/SOUL.md" | sed 's/^/  /' | head -12
        echo -e "  ${D}...${N}"
        echo ""
    fi
    
    # Target directory
    local target="$WORKSPACE"
    if $LOCAL; then
        target="$(pwd)"
    fi
    
    echo -e "  ${W}Install to:${N} $target"
    echo ""
    
    if ! $FORCE; then
        read -rp "$(echo -e "  ${C}Install $emoji $name? [Y/n] ${N}")" confirm
        if [[ "${confirm,,}" == "n" ]]; then
            info "Cancelled"
            exit 0
        fi
    fi
    
    # Install
    mkdir -p "$target"
    
    local copied=0
    for file in SOUL.md IDENTITY.md AGENTS.md; do
        if [[ -f "$agent_dir/$file" ]]; then
            cp "$agent_dir/$file" "$target/$file"
            ok "Copied $file"
            copied=$((copied + 1))
        fi
    done
    
    echo ""
    if [[ $copied -gt 0 ]]; then
        echo -e "  ${G}🎉 ${W}$name${N} ${G}installed successfully!${N}"
        echo -e "  ${D}Files are in: $target${N}"
        echo ""
        echo -e "  ${D}Start your OpenClaw session and enjoy the vibes ✨${N}"
    else
        warn "No personality files found for $name"
    fi
}

# ─── Main ─────────────────────────────────────────────────

# Parse flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        --list|-l)      list_agents; exit 0 ;;
        --search|-s)    shift; search_agents "${1:-}"; exit 0 ;;
        --local)        LOCAL=true; shift ;;
        --force|-f)     FORCE=true; shift ;;
        --help|-h)
            banner
            echo "Usage: ./install.sh [options] <agent-name>"
            echo ""
            echo "Options:"
            echo "  --list, -l          List all available agents"
            echo "  --search, -s QUERY  Search agents by name/category"
            echo "  --local             Install to current directory"
            echo "  --force, -f         Skip confirmation prompt"
            echo "  --help, -h          Show this help"
            echo ""
            echo "Examples:"
            echo "  ./install.sh glados           # Install GLaDOS"
            echo "  ./install.sh --search pirate  # Find pirate agents"
            echo "  ./install.sh --list           # Browse all agents"
            echo "  ./install.sh --local yoda     # Install to current dir"
            exit 0
            ;;
        -*)             die "Unknown option: $1" ;;
        *)              install_agent "$1"; exit 0 ;;
    esac
done

# No args — show help
banner
echo -e "  ${D}Usage:${N} ./install.sh ${G}<agent-name>${N}"
echo -e "  ${D}Try:${N}   ./install.sh --list"
echo ""
