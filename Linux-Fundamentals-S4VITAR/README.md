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
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | **`pwd`**<br>**`ls`** `-l` `-a` `/etc/cron.d` `/etc` `/bin /sbin /usr/sbin` `/dev`<br>**`cd`** `.` `..` `(absolute path)` `(relative path)` `/` `~`<br>**`mkdir`**<br>**`touch`**<br>**`cp`**<br>**`ln`** `-s`<br>**`rm`** `-r` `-f`<br>**`file`**<br>**`stat`**<br>**`*`** |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | **`cat`** `/etc/group` `/etc/passwd` `/etc/shells` `/etc/hosts` `/etc/shadow` `/etc/login.defs` `/home/bandit1/-` `./-` `$(pwd)/-` `"spaces in this filename"` `spaces\ in\ this\ filename` `s*` `home/bandit/s*` `~/.ssh/authorized_keys` `/proc/net/tcp`<br>**`more`** `v` `:set shell=/bin/bash` `:shell`<br>**`less`**<br>**`head`** `-n 1` `-n -3`<br>**`tail`** `-n` `-n 1`<br>**`rev`**<br>**`diff`**<br>**`nano`**<br>**`vi`** `V` `> / <` `y` `p / P` `d` `yy` `.file.swp` |
| 🔍 | **[Searching](notes/searching.md)** | **`find`** `-name` `-type` `-perm` `-group` `-user` `-writable` `-executable` `-readable` `.` `-size`<br>**`grep`** `-n` `-i` `-r "\w"` `-vE "bashrc\\|profile"` `-A 5` `-B 5` `-C 5` `-oP`<br>**`which`**<br>**`command`** `-v`<br>**`xargs`** |
| ✂️ | **[Text Processing](notes/text-processing.md)** | **`echo`** `$PATH` `$HOME` `$SHELL` `$?` `-e` `-e "\n"` `-e "\t"` `-n` `"obase=10; ibase=16; $hexNum" \| bc` `'$HOME'`<br>**`awk`** `'{print $1}'` `'NR==2'` `FS="/"` `'{print $2}' FS=":"` `'NF{print $NF}'` `"/name: \"Forge\"/,/resuelta:/"`<br>**`cut`** `-d` `-f` `-d ':' -f 2`<br>**`tr`** `':' ' '` `'[A-Za-z]' '[N-ZA-Mn-za-m]'` `-d ' '`<br>**`sed`** `'s/^ *//'`<br>**`sort`** `-u` `-n`<br>**`wc`** `-c`<br>**`uniq`** `-u`<br>**`tee`**<br>**`sponge`**<br>**`column`** |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | **`\|`**<br>**`;`**<br>**`&&`**<br>**`\|\|`**<br>**`&`**<br>**`>`** `/dev/null` `done > file`<br>**`>>`**<br>**`2>/dev/null`**<br>**`2>&1`** `3>&1 1>&2 2>&3`<br>**`&>/dev/null`**<br>**`exec`** `3<> file` `>&3` `3>&-` `5>&3` `8>&3-`<br>**`disown`** |
| 👤 | **[Users & Groups](notes/users-groups.md)** | **`whoami`**<br>**`id`**<br>**`sudo`** `su` `pacman -Syu`<br>**`su`**<br>**`useradd`** `-s` `-d`<br>**`usermod`** `-a` `-G`<br>**`passwd`**<br>**`groupadd`** |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | **`chmod`** `o+w` `o-w` `755` `+t` `4000` `u+s` `2000` `g+s` `S / T`<br>**`chown`**<br>**`chgrp`**<br>**`lsattr`**<br>**`chattr`** `+i` `-V`<br>**`getcap`** `-r`<br>**`setcap`** `-r` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | **`bash`** `-p`<br>**`export`** `variable_name` `TERM=xterm`<br>**`env`**<br>**`tty`**<br>**`alias`** `name='absolute_path'`<br>**`!$`**<br>**`!!`**<br>**`!?`**<br>**`Ctrl + L`**<br>**`Tab`**<br>**`Ctrl + C`** |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | **`ps`** `-faux` `-eo command`<br>**`kill`** `-9`<br>**`fg`**<br>**`sleep`** `0.4`<br>**`timeout`** `1 bash -c ""`<br>**`time`**<br>**`watch`** `-n 1`<br>**`crontab`** `* * * * * command` `*/3 * * * *` `* * * * 6` |
| 🌐 | **[Networking](notes/networking.md)** | **`hostname`** `-I`<br>**`ifconfig`**<br>**`iwconfig`**<br>**`ss`** `-nltp`<br>**`lsof`** `-i:`<br>**`nc`**<br>**`ncat`** `--ssl` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | **`ssh`** `-p` `bandit0@bandit.labs.overthewire.org -p 2220` `-i` `user@host "command"`<br>**`sshpass`** `-p`<br>**`ssh-keygen`**<br>**`ssh-copy-id`** `-i` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | **`strings`**<br>**`xxd`** `-p` `-s` `-r`<br>**`ghex`**<br>**`base64`** `-d`<br>**`md5sum`**<br>**`bc`**<br>**`7z`** `l` `x` |
| 📦 | **[System & Packages](notes/system-packages.md)** | **`apt`** `update` `upgrade`<br>**`parrot-upgrade`**<br>**`reboot`**<br>**`neofetch`**<br>**`uname`** `-a` `-r` |
| 🌿 | **[Git](notes/git.md)** | **`git clone`**<br>**`git log`**<br>**`git show`** `(commit id)` `(tag name)`<br>**`git branch`** `-a`<br>**`git checkout`** `(commit id)` `(branch name)`<br>**`git tag`**<br>**`git add`** `-f`<br>**`git commit`** `-m "identifier"`<br>**`git push`** `-u origin branch` |

### 🐚 Bash Scripting

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | **`#!/bin/bash`**<br>**`exit`** `0` `1`<br>**`$()`**<br>**`(command)`**<br>**`#`** |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | **`variable="Hello"`** `=$other_variable` `+="text"` `=""`<br>**`$variable or ${variable}`** `"$variable text"`<br>**`${color_variable}`**<br>**`declare`** `-i` `-a` `-r`<br>**`let`** `+=` `-=`<br>**`$(( ))`** `+ - *` `%`<br>**`array=(1 2 3)`** `$array` `${array[@]}` `${#array[@]}` `${array[0]}` `${array[-1]}` `+=(5)` `=(${array[@]})`<br>**`unset`** `array[0]` `array[-1]`<br>**`read`**<br>**`$RANDOM`** |
| ➗ | **[Operators](notes/operators.md)** | **`=`**<br>**`+=`**<br>**`+ - *`**<br>**`%`**<br>**`-eq`**<br>**`-ne`**<br>**`-gt`**<br>**`-lt`**<br>**`-le`**<br>**`-ge`**<br>**`==`**<br>**`!`** |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | **`$0`**<br>**`$1, $2...`**<br>**`$#`**<br>**`$*`**<br>**`getopts`** `"m:h" arg` `$OPTARG` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | **`if`** `-eq` `[ condition ]` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` `-f` `elif` `else` `[ ] && [ ]` `[ ] \|\| [ ]`<br>**`case`** `m) command;;` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | **`for`** `line in; do; done` `element in ${array[@]}; do; done`<br>**`while`** `[ ]; do; done` `read line; do; done` `true`<br>**`seq`**<br>**`{0000..9999}`** `{a,b,c}`<br>**`break`** |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | **`function name(){ commands }`** `ctrl_c(){}`<br>**`trap`** `ctrl_c INT` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | **`wait`**<br>**`mktemp`** `-d`<br>**`tput`** `civis` `cnorm` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | **`/dev/tcp/$ip/$port`**<br>**`curl`** `-s` `-X GET` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | **`batcat`**<br>**`js-beautify`** |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
