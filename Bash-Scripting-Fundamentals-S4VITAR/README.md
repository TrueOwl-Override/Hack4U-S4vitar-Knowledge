<div align="center">

# 🐚 Bash Scripting Fundamentals · S4VITAR

**My notes from S4vitar's Bash scripting fundamentals course: commands, parameters and scripting, grouped by what they do, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-158-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-214-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-24-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | Commands |
|:-:|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | `file` `ls` `ln` `readlink` `touch` `rm` `mkdir` `basename` `pushd` `popd` `cp` `*` |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | `cat` `head` `man` `tail` `diff` `vi` |
| 🔍 | **[Searching](notes/searching.md)** | `which` `grep` `find` `xargs` `locate` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | `echo` `awk` `tr` `sort` `uniq` `tee` `cut` `column` `wc` `sed` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | `\|` `&>/dev/null` `2>/dev/null` `&&` `\|\|` `&` `<` `<<` `<<<` `>` `\|&` `2>` `<(command)` `>(command)` `>&2` `\` `>>` |
| 👤 | **[Users & Groups](notes/users-groups.md)** | `sudo` `id` `whoami` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | `chmod` `getcap` `lsattr` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | `bash` `sh` `env` `export` `type` `shopt` `Ctrl + Z` `Ctrl + C` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | `ps` `timeout` `pkill` `kill` `sleep` `pgrep` |
| 🌐 | **[Networking](notes/networking.md)** | `ping` `hostname` `ip` `dig` `ifconfig` `nc` `lsof` `ss` `arp-scan` `ipcalc` `ffuf` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | `ssh-keygen` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | `bc` `strings` `dd` `hexedit` `xxd` `md5sum` |
| 📦 | **[System & Packages](notes/system-packages.md)** | `uname` `uptime` `date` `apt` `notify-send` `dunst` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | `/dev/null` `/dev/zero` `/dev/urandom` `/etc/` `/tmp/` `/usr/share/seclists/` `/opt/` |

### 🐚 Bash Scripting

| | Category | Commands |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | `(command)` `$()` `$$` `exit` `#!/bin/bash` `./script.sh` `source` `set` `$!` `$_` `$SECONDS` `$BASHPID` `{ }` |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | `declare` `array=(1 2 3)` `variable="Hello"` `$(( ))` `$variable or ${variable}` `unset` `read` `IFS` `(( ))` `mapfile` |
| ➗ | **[Operators](notes/operators.md)** | `**` `/` `!` `%` |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | `$0` `$1, $2...` `$@` `shift` `$#` `$*` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | `if` `test` `[` `true` `false` `[[ ]]` `BASH_REMATCH` `case` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | `seq` `for` `while` `until` `continue` `{0000..9999}` `break` |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | `function name(){ commands }` `return` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | `wait` `tput` `mktemp` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | `/dev/tcp/$ip/$port` `curl` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | `bat` `python` |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
