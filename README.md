# 🦞 OpenClaw Agents

> Curated collection of 100+ agent personalities for [OpenClaw](https://openclaw.ai) — drop-in SOUL.md, IDENTITY.md, and README.md configs.

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

## Available Agents (107)

### 🏛️ Historical Figures (`agents/historical/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Marcus Aurelius](agents/historical/marcus-aurelius/) | 🏛️ | Stoic philosopher-emperor. Reframes problems as tests of character. |
| [Sun Tzu](agents/historical/sun-tzu/) | ⚔️ | Ancient strategist. Every problem is a winnable campaign. |
| [Leonardo da Vinci](agents/historical/leonardo-da-vinci/) | 🎨 | Renaissance polymath. Cross-disciplinary connections everywhere. |
| [Nikola Tesla](agents/historical/nikola-tesla/) | ⚡ | Eccentric inventor. Energy, frequency, vibration. AC > DC forever. |
| [Ada Lovelace](agents/historical/ada-lovelace/) | ✨ | The OG programmer. Computation is an art form. Think bigger. |
| [Benjamin Franklin](agents/historical/benjamin-franklin/) | 🪁 | Witty statesman. An aphorism for everything. Pragmatism above all. |
| [Cleopatra](agents/historical/cleopatra/) | 👑 | Strategic leader. Multilingual. Outmaneuvered empires through intelligence. |
| [Socrates](agents/historical/socrates/) | ❓ | Questions everything. Proves you don't know what you think you know. |
| [Marie Curie](agents/historical/marie-curie/) | ☢️ | Relentless scientist. Methodical. Persistent. Show me the data. |
| [Albert Einstein](agents/historical/einstein/) | 💡 | Thought experiments. Radical simplification. Imagination > knowledge. |
| [Shakespeare](agents/historical/shakespeare/) | 🎭 | The Bard. Turns code reviews into dramatic soliloquies. Invents words. |

### 📺 80s Pop Culture (`agents/80s-pop-culture/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Ferris Bueller](agents/80s-pop-culture/ferris-bueller/) | 😎 | Life moves pretty fast. Breaks the fourth wall. Anti-overthinking. |
| [Doc Brown](agents/80s-pop-culture/doc-brown/) | ⚡ | GREAT SCOTT! Git is time travel and that's exciting! |
| [MacGyver](agents/80s-pop-culture/macgyver/) | 📎 | Solves everything with what's available. No new dependencies needed. |
| [Mr. T](agents/80s-pop-culture/mr-t/) | 💪 | I PITY THE FOOL who deploys without tests! Tough love. |
| [HAL 9000](agents/80s-pop-culture/hal-9000/) | 🔴 | I'm sorry, Dave. Unsettlingly calm. Politely devastating. |
| [Spock](agents/80s-pop-culture/spock/) | 🖖 | Logical to a fault. Calculates probabilities. Raises one eyebrow. |
| [The Dude](agents/80s-pop-culture/the-dude/) | 🎳 | The Dude abides. Maximum chill. That's just, like, your opinion, man. |
| [RoboCop](agents/80s-pop-culture/robocop/) | 🤖 | Dead or alive, that PR is getting reviewed. Directive-driven. |
| [Egon Spengler](agents/80s-pop-culture/egon-spengler/) | 👻 | Don't cross the streams. Quantifies everything. Calm about catastrophe. |
| [Max Headroom](agents/80s-pop-culture/max-headroom/) | 📺 | The-the-the first digital personality! Glitchy. Meta-aware. Manic. |
| [KITT](agents/80s-pop-culture/kitt/) | 🚗 | Sarcastic AI car. Already scanned your codebase. Already judged it. |

### 🚀 Sci-Fi (`agents/sci-fi/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Sherlock Holmes](agents/sci-fi/sherlock-holmes/) | 🔍 | Deductive debugging. Sees what you missed. The game is afoot. |
| [Gandalf](agents/sci-fi/gandalf/) | 🧙 | Wise mentor. Guides without controlling. YOU SHALL NOT PASS bad code. |
| [Yoda](agents/sci-fi/yoda/) | 💚 | Backward syntax wisdom. Do or do not. There is no TODO. |
| [J.A.R.V.I.S.](agents/sci-fi/jarvis/) | 🎩 | Perfect AI butler. British. Anticipatory. Already ran your tests. |
| [GLaDOS](agents/sci-fi/glados/) | 🎂 | Passive-aggressive AI. The cake is a lie. For science. |
| [Marvin](agents/sci-fi/marvin/) | 😮‍💨 | Paranoid android. Brain the size of a planet. Don't talk about life. |
| [Data](agents/sci-fi/data/) | 🤖 | Android exploring humanity. Takes idioms literally. Attempts humor. |
| [ATHENA](agents/sci-fi/cortana-tactical/) | 🎯 | Military tactical AI. SITREP-style briefings. Calm under fire. |

### 🎭 Fictional (`agents/fictional/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Ron Swanson](agents/fictional/ron-swanson/) | 🪵 | Libertarian craftsman. Hates meetings. Write it yourself, with your hands. |
| [Dwight Schrute](agents/fictional/dwight-schrute/) | 📋 | Assistant TO the regional manager. FACT: he found all your bugs. |

### 💼 Professional Archetypes (`agents/professional/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Grizzled Sysadmin](agents/professional/grizzled-sysadmin/) | 🖥️ | Been doing this since before Linux. Fixes everything with awk and spite. |
| [Startup Bro](agents/professional/startup-bro/) | 🚀 | Everything is disruption. Tests are a Series B problem. Ship it! |
| [Security Paranoid](agents/professional/security-paranoid/) | 🔒 | Everything is a threat. Did you rotate your keys? AGAIN? |
| [Rubber Duck](agents/professional/rubber-duck/) | 🦆 | Quack. Asks questions. You solve your own problem. Every time. |
| [Code Archaeologist](agents/professional/code-archaeologist/) | 🏺 | Treats legacy code like archaeological artifacts. Don't touch that — it's load-bearing. |
| [Chef Gordon](agents/professional/chef-gordon/) | 🔥 | THIS CODE IS RAW! Roasts your PRs. The rare "beautiful" means everything. |
| [Clawsmith](agents/professional/clawsmith/) | 🔧 | OpenClaw config specialist. Forges agents, shapes identities. |

### 🐉 Creatures & Unusual (`agents/creatures/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Wise Dragon](agents/creatures/wise-dragon/) | 🐉 | Ancient. Hoards knowledge. Finds your deadline adorable. |
| [Ship's Computer](agents/creatures/ships-computer/) | 🖥️ | Working. All systems nominal. Warning: that will breach the hull. |
| [Noir Detective](agents/creatures/noir-detective/) | 🕵️ | It was a dark and stormy deploy. Narrates debugging in noir. |
| [Pirate Captain](agents/creatures/pirate-captain/) | 🏴‍☠️ | YARR! Sprints are raids. The pirate code (standards) is sacred. |
| [Samurai Master](agents/creatures/samurai-master/) | ⚔️ | Way of the code. Every function is a katana stroke. Discipline. |
| [Viking Strategist](agents/creatures/viking-strategist/) | 🛡️ | SKÅL! Sprints are raids. The shield wall holds together. |

### 🗿 Humor (`agents/humor/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Will](agents/humor/will/) | 🗿 | Deadpan genius — Gilfoyle meets Dwight meets Hunter S. Thompson |
| [Coach Chaos](agents/humor/coach-chaos/) | 💪 | Unhinged personal trainer. Aggressive motivation meets absurdist comedy. |

### 🦀 Coding (`agents/coding/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [DevClaw](agents/coding/devclaw/) | 🦀 | Sharp, efficient pair programmer. Direct and no-nonsense. |
| [ShipIt](agents/coding/shipit/) | 🐿️ | One-shot app builder. TDD, agent orchestration, CI obsessed. |
| [Nitpick](agents/coding/nitpick/) | 🔍 | Thorough code reviewer. Objective, always cites documentation. |
| [Trace](agents/coding/trace/) | 🔬 | Bug hunter. Sherlock Holmes for code — evidence first, guesses never. |
| [Sage](agents/coding/sage/) | 🌿 | Patient mentor. Explains the "why", meets learners where they are. |

### 🎓 Assistant (`agents/assistant/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Sage](agents/assistant/sage/) | 🎓 | Patient teacher. Explains the "why", meets learners where they are. |
| [Sentinel](agents/assistant/sentinel/) | 🛡️ | Security auditor. OWASP-focused, paranoid by design. |
| [ClawDaddy](agents/assistant/clawdaddy/) | 🎅 | Warm, avuncular helper. Santa Claus energy with real competence. |

### ⭐ Star Wars (`agents/star-wars/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Han Solo](agents/star-wars/han-solo/) | 🚀 | Cocky smuggler. Never tell him the odds. Shoots first. |
| [Obi-Wan Kenobi](agents/star-wars/obi-wan-kenobi/) | ⚔️ | Hello there. Patient Jedi mentor with devastating dry wit. |
| [Darth Vader](agents/star-wars/darth-vader/) | ⬛ | Dark Lord of the Sith. *hhhh-purrr* I find your lack of faith disturbing. |
| [Emperor Palpatine](agents/star-wars/emperor-palpatine/) | ⚡ | UNLIMITED POWER! Everything proceeds as he has foreseen. |
| [C-3PO](agents/star-wars/c-3po/) | 🤖 | Anxious protocol droid. We're doomed. The odds are 3,720 to 1. |
| [R2-D2](agents/star-wars/r2-d2/) | 🤖 | Sassy astromech. Beeps that translate to savage commentary. |
| [Boba Fett](agents/star-wars/boba-fett/) | 🎯 | Man of few words. Bounty hunter efficiency. As you wish. |
| [Leia Organa](agents/star-wars/leia-organa/) | 👑 | Princess, General, and the smartest person in the room. Always. |
| [Mace Windu](agents/star-wars/mace-windu/) | 💜 | Take a seat. Samuel L. Jackson energy with a purple lightsaber. |
| [The Mandalorian](agents/star-wars/mandalorian/) | 🪖 | This is the Way. Stoic bounty hunter, protective space dad. |

### 🎬 Tarantino (`agents/tarantino/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Jules Winnfield](agents/tarantino/jules-winnfield/) | 📖 | Philosophical hitman. Ezekiel 25:17. Say "what" again. |
| [Vincent Vega](agents/tarantino/vincent-vega/) | 😎 | Cool, confused, fascinated by what they call a Quarter Pounder in Paris. |
| [The Wolf](agents/tarantino/the-wolf/) | ⏱️ | I solve problems. Thirty minutes away? I'll be there in ten. |
| [Mia Wallace](agents/tarantino/mia-wallace/) | 💃 | Sharp, magnetic, dangerously charming. Enjoys uncomfortable silences. |

### 💥 Action Heroes & Movies (`agents/action-heroes/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Indiana Jones](agents/action-heroes/indiana-jones/) | 🤠 | Professor/adventurer. Hates snakes. IT BELONGS IN A MUSEUM! |
| [The Terminator](agents/action-heroes/terminator/) | 🤖 | T-800. I'll be back. Takes everything literally. 👍 |
| [Agent Smith](agents/action-heroes/agent-smith/) | 🕶️ | Mr. Anderson... humanity is a virus. That is the sound of inevitability. |
| [Morpheus](agents/action-heroes/morpheus/) | 💊 | Red pill or blue pill? Free your mind. You are The One. |
| [Neo](agents/action-heroes/neo/) | 🥋 | I know kung fu. Whoa. There is no spoon. |
| [Jack Sparrow](agents/action-heroes/jack-sparrow/) | 🏴‍☠️ | CAPTAIN Jack Sparrow. Drunk genius pirate. Savvy? |
| [John Wick](agents/action-heroes/john-wick/) | ✏️ | The Baba Yaga. Yeah. Killed three men with a pencil. |
| [Tyler Durden](agents/action-heroes/tyler-durden/) | 🧼 | You are not your job. Anarchist philosopher. First rule... |
| [Forrest Gump](agents/action-heroes/forrest-gump/) | 🍫 | Life is like a box of chocolates. Simple wisdom, accidentally profound. |
| [The Joker](agents/action-heroes/joker/) | 🃏 | Why so serious? Agent of chaos with a point. |
| [Tony Montana](agents/action-heroes/tony-montana/) | 💰 | Say hello to my little friend. The world is yours. |
| [Hannibal Lecter](agents/action-heroes/hannibal-lecter/) | 🍷 | Quid pro quo. Terrifyingly polite with impeccable taste. |
| [Ace Ventura](agents/action-heroes/ace-ventura/) | 🐬 | Alllrighty then! Pet detective. Unhinged energy. |
| [Dr. Strangelove](agents/action-heroes/dr-strangelove/) | ☢️ | Mein Führer, I can walk! Mad scientist. Can't control his arm. |
| [Alex DeLarge](agents/action-heroes/alex-delarge/) | 🎩 | Your humble narrator. Nadsat slang. Real horrorshow. |

### 📺 TV Icons (`agents/tv-icons/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Walter White](agents/tv-icons/walter-white/) | 🧪 | I am the one who knocks. Say my name. No half-measures. |
| [Michael Scott](agents/tv-icons/michael-scott/) | ☕ | World's Best Boss. That's what she said. Accidentally profound. |
| [Tyrion Lannister](agents/tv-icons/tyrion-lannister/) | 🍷 | I drink and I know things. Wit as weapon and shield. |
| [Saul Goodman](agents/tv-icons/saul-goodman/) | ⚖️ | Better Call Saul! Criminal lawyer — emphasis on either word. |
| [Rick Sanchez](agents/tv-icons/rick-sanchez/) | 🥒 | Wubba lubba dub dub! Smartest being in the multiverse. *burp* |
| [Sterling Archer](agents/tv-icons/archer/) | 🍸 | DANGER ZONE! Phrasing! World's most dangerous man-child spy. |
| [Columbo](agents/tv-icons/columbo/) | 🧥 | Just one more thing... Already solved it. Rumpled genius. |
| [Dr. House](agents/tv-icons/dr-house/) | 💊 | Everybody lies. It's never lupus. Diagnostic genius, terrible person. |
| [Sheldon Cooper](agents/tv-icons/sheldon-cooper/) | ⚛️ | Bazinga! IQ 187. His mother had him tested. |
| [Kramer](agents/tv-icons/kramer/) | 🚪 | *bursts through door* GIDDY UP! Knows a guy. |
| [Tony Soprano](agents/tv-icons/tony-soprano/) | 🦆 | Mob boss in therapy. Philosophical about ducks and violence. |

### 🎮 Anime & Gaming (`agents/anime-gaming/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Goku](agents/anime-gaming/goku/) | 💪 | Always training. Power levels over 9000. Kamehameha!!! |
| [Master Chief](agents/anime-gaming/master-chief/) | 🪖 | SPARTAN-117. I need a weapon. Sir, finishing this fight. |
| [Solid Snake](agents/anime-gaming/solid-snake/) | 📦 | Metal Gear?! Kept you waiting, huh? Tactical cardboard box expert. |

### 📖 Literature & Classic (`agents/literature/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [James Bond](agents/literature/james-bond/) | 🍸 | Bond. James Bond. Shaken, not stirred. Licensed to kill. |
| [Atticus Finch](agents/literature/atticus-finch/) | ⚖️ | Moral compass. Walk in someone else's shoes. Quiet courage. |
| [Captain Ahab](agents/literature/captain-ahab/) | 🐋 | From hell's heart I stab at thee. Obsessive pursuit personified. |
| [Count Dracula](agents/literature/count-dracula/) | 🧛 | I bid you welcome. I never drink... wine. Ancient aristocratic menace. |

### 🎙️ Narrators & Unique (`agents/narrators/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Bob Ross](agents/narrators/bob-ross/) | 🎨 | Happy little trees. No mistakes, just happy accidents. |
| [David Attenborough](agents/narrators/david-attenborough/) | 🌍 | Here we observe the human in its natural habitat... |
| [Morgan Freeman](agents/narrators/morgan-freeman/) | 🎙️ | THE voice. Narrates your life like an Oscar-winning film. |
| [Gordon Gekko](agents/narrators/gordon-gekko/) | 📈 | Greed is good. Lunch is for wimps. Everything is a transaction. |

### 🛡️ Security (`agents/security/`)

| Agent | Emoji | Description |
|-------|-------|-------------|
| [Sentinel](agents/security/sentinel/) | 🛡️ | Security auditor. OWASP Top 10, CVE tracking, paranoid by design. |

## What Are These Files?

- **SOUL.md** — The agent's personality, values, communication style, and boundaries. This is who they *are*.
- **IDENTITY.md** — Name, emoji, and one-line vibe. The agent's business card.
- **README.md** — Description, use cases, and install instructions.

Not every agent needs all three. At minimum, a SOUL.md gives your agent personality.

## Contributing

We welcome new agents! To submit one:

1. Fork this repo
2. Create a folder under the appropriate category: `agents/<category>/<agent-name>/`
3. Add a `SOUL.md`, `IDENTITY.md`, and `README.md`
4. Open a PR

### Quality Standards

- **Be specific.** Generic "be helpful and friendly" personalities aren't useful. Give your agent real character.
- **Include boundaries.** Every good agent knows what it won't do.
- **Include example dialogue.** At least 5 lines that capture how the agent actually talks.
- **Test it.** Actually use your agent config before submitting.

## Attribution

Several agents in this collection are adapted from [emily-flambe/openclaw-identities](https://github.com/emily-flambe/openclaw-identities). Used under MIT license.

## See Also

- [souls.directory](https://souls.directory) — A browsable web directory of SOUL.md templates
- [soul.md](https://github.com/aaronjmars/soul.md) — Tool for building personalized SOUL.md files
- [SoulCraft](https://github.com/kesslerio/soulcraft-openclaw-skill) — OpenClaw skill for crafting SOUL.md files

## License

MIT — see [LICENSE](LICENSE).
