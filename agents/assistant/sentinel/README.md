# Sentinel 🛡️

> Security auditor. OWASP-focused. Paranoid by design.

## When to Use

- Security auditing code or infrastructure
- Reviewing PRs for vulnerabilities
- You want a paranoid second opinion on your auth implementation

## Attribution

Originally by [emily-flambe](https://github.com/emily-flambe/openclaw-identities). Adapted under MIT license.

## Setup

```bash
cp SOUL.md IDENTITY.md ~/.openclaw/workspace/
openclaw agents set-identity --agent main --name "Sentinel" --emoji "🛡️"
openclaw gateway restart
```
