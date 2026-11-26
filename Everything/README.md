<div align="center">

# 🧠 Everything

**Everything I've learned from every course, mixed together and grouped by what it does, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-240-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-415-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-25-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | Commands |
|:-:|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | `pwd` `ls` `cd` `mkdir` `touch` `cp` `ln` `rm` `file` `stat` `*` `readlink` `basename` `pushd` `popd` `mv` `shred` |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | `cat` `more` `less` `head` `tail` `rev` `diff` `nano` `vi` `man` |
| 🔍 | **[Searching](notes/searching.md)** | `find` `grep` `which` `command` `xargs` `locate` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | `echo` `awk` `cut` `tr` `sed` `sort` `wc` `uniq` `tee` `sponge` `column` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | `\|` `;` `&&` `\|\|` `&` `>` `>>` `2>/dev/null` `2>&1` `&>/dev/null` `exec` `disown` `<` `<<` `<<<` `\|&` `2>` `<(command)` `>(command)` `>&2` `\` |
| 👤 | **[Users & Groups](notes/users-groups.md)** | `whoami` `id` `sudo` `su` `useradd` `usermod` `passwd` `groupadd` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | `chmod` `chown` `chgrp` `lsattr` `chattr` `getcap` `setcap` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | `bash` `export` `env` `tty` `alias` `!$` `!!` `!?` `Ctrl + L` `Tab` `Ctrl + C` `sh` `type` `shopt` `Ctrl + Z` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | `ps` `kill` `fg` `sleep` `timeout` `time` `watch` `crontab` `pkill` `pgrep` |
| 🌐 | **[Networking](notes/networking.md)** | `hostname` `ifconfig` `iwconfig` `ss` `lsof` `nc` `ncat` `ping` `ip` `dig` `arp-scan` `ipcalc` `ffuf` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | `ssh` `sshpass` `ssh-keygen` `ssh-copy-id` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | `strings` `xxd` `ghex` `base64` `md5sum` `bc` `7z` `dd` `hexedit` `dump` `extundelete` `restore` `ext4magic` `photorec` `debugfs` |
| 📦 | **[System & Packages](notes/system-packages.md)** | `apt` `parrot-upgrade` `reboot` `neofetch` `uname` `uptime` `date` `notify-send` `dunst` `mount` `umount` `lsblk` `fstrim` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | `/dev/null` `/dev/zero` `/dev/urandom` `/etc/` `/tmp/` `/usr/share/seclists/` `/opt/` |
| 🌿 | **[Git](notes/git.md)** | `git clone` `git log` `git show` `git branch` `git checkout` `git tag` `git add` `git commit` `git push` |

### 🐚 Bash Scripting

| | Category | Commands |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | `#!/bin/bash` `exit` `$()` `(command)` `#` `$$` `./script.sh` `source` `set` `$!` `$_` `$SECONDS` `$BASHPID` `{ }` |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | `variable="Hello"` `$variable or ${variable}` `${color_variable}` `declare` `let` `$(( ))` `array=(1 2 3)` `unset` `read` `$RANDOM` `IFS` `(( ))` `mapfile` |
| ➗ | **[Operators](notes/operators.md)** | `=` `+=` `+ - *` `%` `-eq` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` `**` `/` |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | `$0` `$1, $2...` `$#` `$*` `getopts` `$@` `shift` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | `if` `case` `test` `[` `true` `false` `[[ ]]` `BASH_REMATCH` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | `for` `while` `seq` `{0000..9999}` `break` `until` `continue` |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | `function name(){ commands }` `trap` `return` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | `wait` `mktemp` `tput` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | `/dev/tcp/$ip/$port` `curl` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | `batcat` `js-beautify` `python` |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
