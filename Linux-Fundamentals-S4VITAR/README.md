<div align="center">

# 🐧 Linux Fundamentals · S4VITAR

**My notes from S4vitar's Linux fundamentals course: Linux commands and Bash scripting, grouped by what they do, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-162-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-210-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-24-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | **`pwd`** **`ls`** `-l` `-a` `/etc/cron.d` `/etc` `/bin /sbin /usr/sbin` `/dev` **`cd`** `.` `..` `(absolute path)` `(relative path)` `/` `~` **`mkdir`** **`touch`** **`cp`** **`ln`** `-s` **`rm`** `-r` `-f` **`file`** **`stat`** **`*`** |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | **`cat`** `/etc/group` `/etc/passwd` `/etc/shells` `/etc/hosts` `/etc/shadow` `/etc/login.defs` `/home/bandit1/-` `./-` `$(pwd)/-` `"spaces in this filename"` `spaces\ in\ this\ filename` `s*` `home/bandit/s*` `~/.ssh/authorized_keys` `/proc/net/tcp` **`more`** `v` `:set shell=/bin/bash` `:shell` **`less`** **`head`** `-n 1` `-n -3` **`tail`** `-n` `-n 1` **`rev`** **`diff`** **`nano`** **`vi`** `V` `> / <` `y` `p / P` `d` `yy` `.file.swp` |
| 🔍 | **[Searching](notes/searching.md)** | **`find`** `-name` `-type` `-perm` `-group` `-user` `-writable` `-executable` `-readable` `.` `-size` **`grep`** `-n` `-i` `-r "\w"` `-vE "bashrc\\|profile"` `-A 5` `-B 5` `-C 5` `-oP` **`which`** **`command`** `-v` **`xargs`** |
| ✂️ | **[Text Processing](notes/text-processing.md)** | **`echo`** `$PATH` `$HOME` `$SHELL` `$?` `-e` `-e "\n"` `-e "\t"` `-n` `"obase=10; ibase=16; $hexNum" \| bc` `'$HOME'` **`awk`** `'{print $1}'` `'NR==2'` `FS="/"` `'{print $2}' FS=":"` `'NF{print $NF}'` `"/name: \"Forge\"/,/resuelta:/"` **`cut`** `-d` `-f` `-d ':' -f 2` **`tr`** `':' ' '` `'[A-Za-z]' '[N-ZA-Mn-za-m]'` `-d ' '` **`sed`** `'s/^ *//'` **`sort`** `-u` `-n` **`wc`** `-c` **`uniq`** `-u` **`tee`** **`sponge`** **`column`** |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | **`\|`** **`;`** **`&&`** **`\|\|`** **`&`** **`>`** `/dev/null` `done > file` **`>>`** **`2>/dev/null`** **`2>&1`** `3>&1 1>&2 2>&3` **`&>/dev/null`** **`exec`** `3<> file` `>&3` `3>&-` `5>&3` `8>&3-` **`disown`** |
| 👤 | **[Users & Groups](notes/users-groups.md)** | **`whoami`** **`id`** **`sudo`** `su` `pacman -Syu` **`su`** **`useradd`** `-s` `-d` **`usermod`** `-a` `-G` **`passwd`** **`groupadd`** |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | **`chmod`** `o+w` `o-w` `755` `+t` `4000` `u+s` `2000` `g+s` `S / T` **`chown`** **`chgrp`** **`lsattr`** **`chattr`** `+i` `-V` **`getcap`** `-r` **`setcap`** `-r` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | **`bash`** `-p` **`export`** `variable_name` `TERM=xterm` **`env`** **`tty`** **`alias`** `name='absolute_path'` **`!$`** **`!!`** **`!?`** **`Ctrl + L`** **`Tab`** **`Ctrl + C`** |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | **`ps`** `-faux` `-eo command` **`kill`** `-9` **`fg`** **`sleep`** `0.4` **`timeout`** `1 bash -c ""` **`time`** **`watch`** `-n 1` **`crontab`** `* * * * * command` `*/3 * * * *` `* * * * 6` |
| 🌐 | **[Networking](notes/networking.md)** | **`hostname`** `-I` **`ifconfig`** **`iwconfig`** **`ss`** `-nltp` **`lsof`** `-i:` **`nc`** **`ncat`** `--ssl` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | **`ssh`** `-p` `bandit0@bandit.labs.overthewire.org -p 2220` `-i` `user@host "command"` **`sshpass`** `-p` **`ssh-keygen`** **`ssh-copy-id`** `-i` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | **`strings`** **`xxd`** `-p` `-s` `-r` **`ghex`** **`base64`** `-d` **`md5sum`** **`bc`** **`7z`** `l` `x` |
| 📦 | **[System & Packages](notes/system-packages.md)** | **`apt`** `update` `upgrade` **`parrot-upgrade`** **`reboot`** **`neofetch`** **`uname`** `-a` `-r` |
| 🌿 | **[Git](notes/git.md)** | **`git clone`** **`git log`** **`git show`** `(commit id)` `(tag name)` **`git branch`** `-a` **`git checkout`** `(commit id)` `(branch name)` **`git tag`** **`git add`** `-f` **`git commit`** `-m "identifier"` **`git push`** `-u origin branch` |

### 🐚 Bash Scripting

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | **`#!/bin/bash`** **`exit`** `0` `1` **`$()`** **`(command)`** **`#`** |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | **`variable="Hello"`** `=$other_variable` `+="text"` `=""` **`$variable or ${variable}`** `"$variable text"` **`${color_variable}`** **`declare`** `-i` `-a` `-r` **`let`** `+=` `-=` **`$(( ))`** `+ - *` `%` **`array=(1 2 3)`** `$array` `${array[@]}` `${#array[@]}` `${array[0]}` `${array[-1]}` `+=(5)` `=(${array[@]})` **`unset`** `array[0]` `array[-1]` **`read`** **`$RANDOM`** |
| ➗ | **[Operators](notes/operators.md)** | **`=`** **`+=`** **`+ - *`** **`%`** **`-eq`** **`-ne`** **`-gt`** **`-lt`** **`-le`** **`-ge`** **`==`** **`!`** |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | **`$0`** **`$1, $2...`** **`$#`** **`$*`** **`getopts`** `"m:h" arg` `$OPTARG` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | **`if`** `-eq` `[ condition ]` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` `-f` `elif` `else` `[ ] && [ ]` `[ ] \|\| [ ]` **`case`** `m) command;;` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | **`for`** `line in; do; done` `element in ${array[@]}; do; done` **`while`** `[ ]; do; done` `read line; do; done` `true` **`seq`** **`{0000..9999}`** `{a,b,c}` **`break`** |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | **`function name(){ commands }`** `ctrl_c(){}` **`trap`** `ctrl_c INT` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | **`wait`** **`mktemp`** `-d` **`tput`** `civis` `cnorm` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | **`/dev/tcp/$ip/$port`** **`curl`** `-s` `-X GET` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | **`batcat`** **`js-beautify`** |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
