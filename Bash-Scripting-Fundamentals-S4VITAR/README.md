<div align="center">

# 🐚 Bash Scripting Fundamentals · S4VITAR

**My notes from S4vitar's Bash scripting fundamentals course: commands, parameters and scripting, grouped by what they do, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-128-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-169-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-24-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | What's inside | Commands |
|:-:|:--|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | Move around the filesystem and create, copy, delete and inspect files and folders. | `file` `ls` `ln` `readlink` `touch` `rm` `mkdir` `basename` `pushd` `popd` `cp` |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | Read files in the terminal, page through output, compare files and edit text. | `cat` `head` `man` `tail` `diff` `vi` |
| 🔍 | **[Searching](notes/searching.md)** | Find files anywhere on the system and locate where commands live. | `which` `grep` `find` `xargs` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | Filter, cut, transform and sort text coming from files or other commands. | `echo` `awk` `tr` `sort` `uniq` `tee` `cut` `column` `wc` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | Chain commands, decide where output and errors go, and run things in the background. | `\|` `&>/dev/null` `2>/dev/null` `&&` `\|\|` `&` `<` `<<` `<<<` `>` `\|&` `2>` `<(command)` `>(command)` `>&2` `\` |
| 👤 | **[Users & Groups](notes/users-groups.md)** | Check who you are, switch users, and manage accounts, passwords and groups. | `sudo` `id` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | Control who can read, write and run files, plus special attributes and capabilities. | `chmod` `getcap` `lsattr` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | Shell settings, environment variables, aliases and handy history shortcuts. | `bash` `sh` `env` `export` `type` `shopt` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | See what's running, limit or repeat commands, and schedule jobs with cron. | `ps` `timeout` `pkill` `kill` `sleep` `pgrep` |
| 🌐 | **[Networking](notes/networking.md)** | Network interfaces, open ports and sockets, and raw connections with netcat. | `ping` `hostname` `ip` `dig` `ifconfig` `nc` `lsof` `ss` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | Connect to remote machines and manage SSH keys. | `ssh-keygen` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | Inspect binary data, convert between formats, hash files and work with archives. | `bc` `strings` `dd` `hexedit` `xxd` |
| 📦 | **[System & Packages](notes/system-packages.md)** | Update the system, manage packages and check system info. | `uname` `uptime` `date` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | Special device files and system paths you read from or write to. | `/dev/null` `/dev/zero` `/dev/urandom` |

### 🐚 Bash Scripting

| | Category | What's inside | Commands |
|:-:|:--|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | The building blocks of every script: the shebang, exit codes, command substitution and subshells. | `(command)` `$()` `$$` `exit` `#!/bin/bash` `./script.sh` `source` `set` `$!` `$_` `$SECONDS` `$BASHPID` `{ }` |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | Store values in variables, read them back and do math with them. | `declare` `array=(1 2 3)` `variable="Hello"` `$(( ))` `$variable or ${variable}` `unset` `read` `IFS` `(( ))` |
| ➗ | **[Operators](notes/operators.md)** | Assign, do math, compare numbers and text, and negate conditions. | `**` `/` |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | Read what's passed to your script: positional arguments and flags parsed with getopts. | `$0` `$1, $2...` `$@` `shift` `$#` `$*` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | Make decisions with if and case. | `if` `test` `[` `true` `false` `[[ ]]` `BASH_REMATCH` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | Repeat work with for and while, and generate sequences to loop over. | `seq` `for` `while` |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | Group commands into functions and react to signals like Ctrl+C. | `function name(){ commands }` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | Wait for background jobs, set time limits, create temp files and control the cursor. | `wait` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | Open TCP connections from pure Bash and make HTTP requests. | `/dev/tcp/$ip/$port` `curl` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | Handy tools for reading and prettifying code while you script. | `bat` |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
