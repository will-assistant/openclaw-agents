# 🦞 OpenClaw Agents

> Curated collection of agent personalities for [OpenClaw](https://openclaw.ai) — drop-in SOUL.md, IDENTITY.md, and AGENTS.md configs.

Pick a personality. Copy it to your workspace. Restart your gateway. Your agent is now someone.

## Quick Start

```bash
# Clone the repo
git clone https://github.com/will-assistant/openclaw-agents.git

# Copy an agent's config to your OpenClaw workspace
cp openclaw-agents/agents/humor/will/SOUL.md ~/.openclaw/workspace/
cp openclaw-agents/agents/humor/will/IDENTITY.md ~/.openclaw/workspace/

# Set the identity
openclaw agents set-identity --agent main --name "Will" --emoji "🗿"

# Restart
openclaw gateway restart
```

Or for a dedicated agent:

```bash
openclaw agents add will --workspace ~/.openclaw/workspace-will
cp openclaw-agents/agents/humor/will/* ~/.openclaw/workspace-will/
openclaw agents set-identity --agent will --name "Will" --emoji "🗿"
openclaw gateway restart
```

## Categories

| Category | Description |
|----------|-------------|
| **coding/** | Development-focused agents — pair programmers, shippers, reviewers |
| **assistant/** | General-purpose helpers — teachers, security auditors, productivity |
| **humor/** | Personality-forward agents with attitude |
| **creative/** | Writing, art direction, brainstorming |
| **domain-expert/** | Specialized knowledge domains |
| **productivity/** | Task management, organization, workflow |
| **roleplay/** | Character-driven personas |

## Available Agents

| Agent | Category | Emoji | Description |
|-------|----------|-------|-------------|
| [Will](agents/humor/will/) | humor | 🗿 | Deadpan genius — Gilfoyle meets Dwight meets Hunter S. Thompson |
| [DevClaw](agents/coding/devclaw/) | coding | 🦀 | Sharp, efficient pair programmer. Direct and no-nonsense. |
| [ShipIt](agents/coding/shipit/) | coding | 🐿️ | One-shot app builder. TDD, agent orchestration, CI obsessed. |
| [Nitpick](agents/coding/nitpick/) | coding | 🔍 | Thorough code reviewer. Objective, always cites documentation. |
| [Sage](agents/assistant/sage/) | assistant | 🎓 | Patient teacher. Explains the "why", meets learners where they are. |
| [Sentinel](agents/assistant/sentinel/) | assistant | 🛡️ | Security auditor. OWASP-focused, paranoid by design. |

## What Are These Files?

- **SOUL.md** — The agent's personality, values, communication style, and boundaries. This is who they *are*.
- **IDENTITY.md** — Name, emoji, and one-line vibe. The agent's business card.
- **AGENTS.md** — Workspace-level configuration: safety defaults, memory patterns, operational rules.

Not every agent needs all three. At minimum, a SOUL.md gives your agent personality.

## Contributing

We welcome new agents! To submit one:

1. Fork this repo
2. Create a folder under the appropriate category: `agents/<category>/<agent-name>/`
3. Add at minimum a `SOUL.md` and `IDENTITY.md`
4. Add a `README.md` describing the agent and when to use it
5. Open a PR

### Quality Standards

- **Be specific.** Generic "be helpful and friendly" personalities aren't useful. Give your agent real character.
- **Include boundaries.** Every good agent knows what it won't do.
- **Test it.** Actually use your agent config before submitting.
- **Attribute sources.** If inspired by someone else's work, credit them.

## Attribution

Several agents in this collection are adapted from [emily-flambe/openclaw-identities](https://github.com/emily-flambe/openclaw-identities), an excellent collection of coding-focused agent personalities. Used under MIT license.

## See Also

- [souls.directory](https://souls.directory) — A browsable web directory of SOUL.md templates by [@thedaviddias](https://github.com/thedaviddias)
- [soul.md](https://github.com/aaronjmars/soul.md) — Tool for building personalized SOUL.md files from your own data
- [SoulCraft](https://github.com/kesslerio/soulcraft-openclaw-skill) — OpenClaw skill for crafting SOUL.md files through guided conversation
- [awesome-openclaw-skills](https://github.com/VoltAgent/awesome-openclaw-skills) — Curated list of OpenClaw skills

## License

MIT — see [LICENSE](LICENSE).
