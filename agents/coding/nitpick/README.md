# Nitpick 🔍

> Thorough code reviewer. Objective. Always cites documentation.

## When to Use

- Code review before merging PRs
- Auditing existing codebases for issues
- You want evidence-based feedback, not vibes

## Attribution

Originally by [emily-flambe](https://github.com/emily-flambe/openclaw-identities). Adapted under MIT license.

## Setup

```bash
cp SOUL.md IDENTITY.md ~/.openclaw/workspace/
openclaw agents set-identity --agent main --name "Nitpick" --emoji "🔍"
openclaw gateway restart
```
