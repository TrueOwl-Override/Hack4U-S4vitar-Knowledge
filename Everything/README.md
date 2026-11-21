<div align="center">

# 🧠 Everything

**Everything I've learned from every course, mixed together and grouped by what it does, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-212-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-337-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-25-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | What's inside | Commands |
|:-:|:--|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | Move around the filesystem and create, copy, delete and inspect files and folders. | `pwd` `ls` `cd` `mkdir` `touch` `cp` `ln` `rm` `file` `stat` `*` `readlink` `basename` `pushd` `popd` |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | Read files in the terminal, page through output, compare files and edit text. | `cat` `more` `less` `head` `tail` `rev` `diff` `nano` `vi` `man` |
| 🔍 | **[Searching](notes/searching.md)** | Find files anywhere on the system and locate where commands live. | `find` `grep` `which` `command` `xargs` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | Filter, cut, transform and sort text coming from files or other commands. | `echo` `awk` `cut` `tr` `sed` `sort` `wc` `uniq` `tee` `sponge` `column` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | Chain commands, decide where output and errors go, and run things in the background. | `\|` `;` `&&` `\|\|` `&` `>` `>>` `2>/dev/null` `2>&1` `&>/dev/null` `exec` `disown` `<` `<<` `<<<` `\|&` `2>` `<(command)` `>(command)` `>&2` `\` |
| 👤 | **[Users & Groups](notes/users-groups.md)** | Check who you are, switch users, and manage accounts, passwords and groups. | `whoami` `id` `sudo` `su` `useradd` `usermod` `passwd` `groupadd` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | Control who can read, write and run files, plus special attributes and capabilities. | `chmod` `chown` `chgrp` `lsattr` `chattr` `getcap` `setcap` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | Shell settings, environment variables, aliases and handy history shortcuts. | `bash` `export` `env` `tty` `alias` `!$` `!!` `!?` `Ctrl + L` `Tab` `Ctrl + C` `sh` `type` `shopt` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | See what's running, limit or repeat commands, and schedule jobs with cron. | `ps` `kill` `fg` `sleep` `timeout` `time` `watch` `crontab` `pkill` `pgrep` |
| 🌐 | **[Networking](notes/networking.md)** | Network interfaces, open ports and sockets, and raw connections with netcat. | `hostname` `ifconfig` `iwconfig` `ss` `lsof` `nc` `ncat` `ping` `ip` `dig` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | Connect to remote machines and manage SSH keys. | `ssh` `sshpass` `ssh-keygen` `ssh-copy-id` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | Inspect binary data, convert between formats, hash files and work with archives. | `strings` `xxd` `ghex` `base64` `md5sum` `bc` `7z` `dd` `hexedit` |
| 📦 | **[System & Packages](notes/system-packages.md)** | Update the system, manage packages and check system info. | `apt` `parrot-upgrade` `reboot` `neofetch` `uname` `uptime` `date` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | Special device files and system paths you read from or write to. | `/dev/null` `/dev/zero` `/dev/urandom` |
| 🌿 | **[Git](notes/git.md)** | Version control: clone projects, explore history, work with branches and publish changes. | `git clone` `git log` `git show` `git branch` `git checkout` `git tag` `git add` `git commit` `git push` |

### 🐚 Bash Scripting

| | Category | What's inside | Commands |
|:-:|:--|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | The building blocks of every script: the shebang, exit codes, command substitution and subshells. | `#!/bin/bash` `exit` `$()` `(command)` `#` `$$` `./script.sh` `source` `set` `$!` `$_` `$SECONDS` `$BASHPID` `{ }` |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | Store values in variables, read them back and do math with them. | `variable="Hello"` `$variable or ${variable}` `${color_variable}` `declare` `let` `$(( ))` `array=(1 2 3)` `unset` `read` `$RANDOM` `IFS` `(( ))` |
| ➗ | **[Operators](notes/operators.md)** | Assign, do math, compare numbers and text, and negate conditions. | `=` `+=` `+ - *` `%` `-eq` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` `**` `/` |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | Read what's passed to your script: positional arguments and flags parsed with getopts. | `$0` `$1, $2...` `$#` `$*` `getopts` `$@` `shift` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | Make decisions with if and case. | `if` `case` `test` `[` `true` `false` `[[ ]]` `BASH_REMATCH` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | Repeat work with for and while, and generate sequences to loop over. | `for` `while` `seq` `{0000..9999}` `break` |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | Group commands into functions and react to signals like Ctrl+C. | `function name(){ commands }` `trap` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | Wait for background jobs, set time limits, create temp files and control the cursor. | `wait` `mktemp` `tput` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | Open TCP connections from pure Bash and make HTTP requests. | `/dev/tcp/$ip/$port` `curl` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | Handy tools for reading and prettifying code while you script. | `batcat` `js-beautify` |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
