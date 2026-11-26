<div align="center">

# 🐧 Linux Fundamentals · S4VITAR

**My notes from S4vitar's Linux fundamentals course: Linux commands and Bash scripting, grouped by what they do, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-174-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-257-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-24-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | Commands |
|:-:|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | `pwd` `ls` `cd` `mkdir` `touch` `cp` `ln` `rm` `file` `stat` `*` `mv` `shred` |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | `cat` `more` `less` `head` `tail` `rev` `diff` `nano` `vi` |
| 🔍 | **[Searching](notes/searching.md)** | `find` `grep` `which` `command` `xargs` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | `echo` `awk` `cut` `tr` `sed` `sort` `wc` `uniq` `tee` `sponge` `column` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | `\|` `;` `&&` `\|\|` `&` `>` `>>` `2>/dev/null` `2>&1` `&>/dev/null` `exec` `disown` |
| 👤 | **[Users & Groups](notes/users-groups.md)** | `whoami` `id` `sudo` `su` `useradd` `usermod` `passwd` `groupadd` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | `chmod` `chown` `chgrp` `lsattr` `chattr` `getcap` `setcap` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | `bash` `export` `env` `tty` `alias` `!$` `!!` `!?` `Ctrl + L` `Tab` `Ctrl + C` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | `ps` `kill` `fg` `sleep` `timeout` `time` `watch` `crontab` |
| 🌐 | **[Networking](notes/networking.md)** | `hostname` `ifconfig` `iwconfig` `ss` `lsof` `nc` `ncat` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | `ssh` `sshpass` `ssh-keygen` `ssh-copy-id` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | `strings` `xxd` `ghex` `base64` `md5sum` `bc` `7z` `dump` `extundelete` `restore` `ext4magic` `photorec` `debugfs` |
| 📦 | **[System & Packages](notes/system-packages.md)** | `apt` `parrot-upgrade` `reboot` `neofetch` `uname` `mount` `umount` `lsblk` `fstrim` |
| 🌿 | **[Git](notes/git.md)** | `git clone` `git log` `git show` `git branch` `git checkout` `git tag` `git add` `git commit` `git push` |

### 🐚 Bash Scripting

| | Category | Commands |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | `#!/bin/bash` `exit` `$()` `(command)` `#` |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | `variable="Hello"` `$variable or ${variable}` `${color_variable}` `declare` `let` `$(( ))` `array=(1 2 3)` `unset` `read` `$RANDOM` |
| ➗ | **[Operators](notes/operators.md)** | `=` `+=` `+ - *` `%` `-eq` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | `$0` `$1, $2...` `$#` `$*` `getopts` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | `if` `case` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | `for` `while` `seq` `{0000..9999}` `break` |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | `function name(){ commands }` `trap` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | `wait` `mktemp` `tput` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | `/dev/tcp/$ip/$port` `curl` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | `batcat` `js-beautify` |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
