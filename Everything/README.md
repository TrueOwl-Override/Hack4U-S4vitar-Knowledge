<div align="center">

# 🧠 Everything

**Everything I've learned from every course, mixed together and grouped by what it does, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-212-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-337-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-25-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | **`pwd`**<br>**`ls`** `-l` `-a` `/etc/cron.d` `/etc` `/bin /sbin /usr/sbin` `/dev` `-l /usr/bin/sh`<br>**`cd`** `.` `..` `(absolute path)` `(relative path)` `/` `~`<br>**`mkdir`** `-p`<br>**`touch`**<br>**`cp`**<br>**`ln`** `-s` `-sf`<br>**`rm`** `-r` `-f` `-r /tmp/$var`<br>**`file`**<br>**`stat`**<br>**`*`**<br>**`readlink`** `-f`<br>**`basename`**<br>**`pushd`**<br>**`popd`** |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | **`cat`** `/etc/group` `/etc/passwd` `/etc/shells` `/etc/hosts` `/etc/shadow` `/etc/login.defs` `/home/bandit1/-` `./-` `$(pwd)/-` `"spaces in this filename"` `spaces\ in\ this\ filename` `s*` `home/bandit/s*` `~/.ssh/authorized_keys` `/proc/net/tcp` `<< 'EOF'`<br>**`more`** `v` `:set shell=/bin/bash` `:shell`<br>**`less`**<br>**`head`** `-n 1` `-n -3` `-c`<br>**`tail`** `-n` `-n 1` `-1`<br>**`rev`**<br>**`diff`**<br>**`nano`**<br>**`vi`** `V` `> / <` `y` `p / P` `d` `yy` `.file.swp` `:%s/old/new/g`<br>**`man`** |
| 🔍 | **[Searching](notes/searching.md)** | **`find`** `-name` `-type` `-perm` `-group` `-user` `-writable` `-executable` `-readable` `.` `-size` `-perm -o+w` `-perm -2000`<br>**`grep`** `-n` `-i` `-r "\w"` `-vE "bashrc\\|profile"` `-A 5` `-B 5` `-C 5` `-oP` `-v` `-E` `-vE` `^pattern$` `-oE` `-q` `-qE`<br>**`which`** `/usr/bin/bash /bin/bash /usr/bin/zsh /bin/zsh`<br>**`command`** `-v`<br>**`xargs`** `(join lines)` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | **`echo`** `$PATH` `$HOME` `$SHELL` `$?` `-e` `-e "\n"` `-e "\t"` `-n` `"obase=10; ibase=16; $hexNum" \| bc` `'$HOME'` `$ZSH_VERSION` `$BASH_VERSION` `\$ \" \\` `$'...'` `$a+$b` `$USER` `$PWD` `$OLDPWD` `$TERM` `$HOSTNAME`<br>**`awk`** `'{print $1}'` `'NR==2'` `FS="/"` `'{print $2}' FS=":"` `'NF{print $NF}'` `"/name: \"Forge\"/,/resuelta:/"` `-F` `NR>1 {print $N}`<br>**`cut`** `-d` `-f` `-d ':' -f 2` `-f1,7`<br>**`tr`** `':' ' '` `'[A-Za-z]' '[N-ZA-Mn-za-m]'` `-d ' '` `' ' ','` `' ' '\n'` `-dc`<br>**`sed`** `'s/^ *//'`<br>**`sort`** `-u` `-n` `-rn`<br>**`wc`** `-c` `-l`<br>**`uniq`** `-u` `-c`<br>**`tee`** `-a`<br>**`sponge`**<br>**`column`** |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | **`\|`**<br>**`;`**<br>**`&&`**<br>**`\|\|`**<br>**`&`**<br>**`>`** `/dev/null` `done > file` `> file`<br>**`>>`**<br>**`2>/dev/null`**<br>**`2>&1`** `3>&1 1>&2 2>&3`<br>**`&>/dev/null`**<br>**`exec`** `3<> file` `>&3` `3>&-` `5>&3` `8>&3-`<br>**`disown`**<br>**`<`**<br>**`<<`**<br>**`<<<`**<br>**`\|&`**<br>**`2>`**<br>**`<(command)`**<br>**`>(command)`**<br>**`>&2`**<br>**`\`** |
| 👤 | **[Users & Groups](notes/users-groups.md)** | **`whoami`**<br>**`id`** `-u`<br>**`sudo`** `su` `pacman -Syu` `pacman -S`<br>**`su`**<br>**`useradd`** `-s` `-d`<br>**`usermod`** `-a` `-G`<br>**`passwd`**<br>**`groupadd`** |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | **`chmod`** `o+w` `o-w` `755` `+t` `4000` `u+s` `2000` `g+s` `S / T` `+x` `u-x` `-x` `o-rx` `700`<br>**`chown`**<br>**`chgrp`**<br>**`lsattr`**<br>**`chattr`** `+i` `-V`<br>**`getcap`** `-r`<br>**`setcap`** `-r` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | **`bash`** `-p` `script.sh` `-c`<br>**`export`** `variable_name` `TERM=xterm` `PATH=dir:$PATH`<br>**`env`**<br>**`tty`**<br>**`alias`** `name='absolute_path'`<br>**`!$`**<br>**`!!`**<br>**`!?`**<br>**`Ctrl + L`**<br>**`Tab`**<br>**`Ctrl + C`**<br>**`sh`**<br>**`type`**<br>**`shopt`** `-s` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | **`ps`** `-faux` `-eo command` `aux`<br>**`kill`** `-9` `-15`<br>**`fg`**<br>**`sleep`** `0.4`<br>**`timeout`** `1 bash -c ""`<br>**`time`**<br>**`watch`** `-n 1`<br>**`crontab`** `* * * * * command` `*/3 * * * *` `* * * * 6`<br>**`pkill`**<br>**`pgrep`** `-x` |
| 🌐 | **[Networking](notes/networking.md)** | **`hostname`** `-I`<br>**`ifconfig`**<br>**`iwconfig`**<br>**`ss`** `-nltp` `-tln` `-tn`<br>**`lsof`** `-i:`<br>**`nc`** `-nlvp`<br>**`ncat`** `--ssl`<br>**`ping`** `-c` `-W`<br>**`ip`** `a` `-4 addr show`<br>**`dig`** `+short` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | **`ssh`** `-p` `bandit0@bandit.labs.overthewire.org -p 2220` `-i` `user@host "command"`<br>**`sshpass`** `-p`<br>**`ssh-keygen`** `-f`<br>**`ssh-copy-id`** `-i` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | **`strings`**<br>**`xxd`** `-p` `-s` `-r` `-l`<br>**`ghex`**<br>**`base64`** `-d`<br>**`md5sum`**<br>**`bc`** `scale=2`<br>**`7z`** `l` `x`<br>**`dd`** `if= of=` `bs= count=`<br>**`hexedit`** |
| 📦 | **[System & Packages](notes/system-packages.md)** | **`apt`** `update` `upgrade`<br>**`parrot-upgrade`**<br>**`reboot`**<br>**`neofetch`**<br>**`uname`** `-a` `-r` `-m`<br>**`uptime`** `-p`<br>**`date`** `+%Y-%m-%d %H:%M:%S` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | **`/dev/null`**<br>**`/dev/zero`**<br>**`/dev/urandom`** |
| 🌿 | **[Git](notes/git.md)** | **`git clone`**<br>**`git log`**<br>**`git show`** `(commit id)` `(tag name)`<br>**`git branch`** `-a`<br>**`git checkout`** `(commit id)` `(branch name)`<br>**`git tag`**<br>**`git add`** `-f`<br>**`git commit`** `-m "identifier"`<br>**`git push`** `-u origin branch` |

### 🐚 Bash Scripting

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | **`#!/bin/bash`** `#!/usr/bin/bash` `#!/bin/sh` `#!/usr/bin/python3` `#!/usr/bin/perl` `#!/usr/bin/env bash`<br>**`exit`** `0` `1` `2`<br>**`$()`** `` `command` ``<br>**`(command)`** `(command) 2>/dev/null`<br>**`#`**<br>**`$$`**<br>**`./script.sh`**<br>**`source`** `~/.bashrc`<br>**`set`** `-u`<br>**`$!`**<br>**`$_`**<br>**`$SECONDS`**<br>**`$BASHPID`**<br>**`{ }`** |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | **`variable="Hello"`** `=$other_variable` `+="text"` `=""` `${name:-default}` `${name:=default}`<br>**`$variable or ${variable}`** `"$variable text"`<br>**`${color_variable}`**<br>**`declare`** `-i` `-a` `-r`<br>**`let`** `+=` `-=`<br>**`$(( ))`** `+ - *` `%` `**` `/`<br>**`array=(1 2 3)`** `$array` `${array[@]}` `${#array[@]}` `${array[0]}` `${array[-1]}` `+=(5)` `=(${array[@]})`<br>**`unset`** `array[0]` `array[-1]` `variable`<br>**`read`** `-ra ... <<<` `-r` `-a` `-p` `-rp`<br>**`$RANDOM`**<br>**`IFS`**<br>**`(( ))`** `((var++))` `(( a > b ))` `((var+=5))` |
| ➗ | **[Operators](notes/operators.md)** | **`=`**<br>**`+=`**<br>**`+ - *`**<br>**`%`**<br>**`-eq`**<br>**`-ne`**<br>**`-gt`**<br>**`-lt`**<br>**`-le`**<br>**`-ge`**<br>**`==`**<br>**`!`**<br>**`**`**<br>**`/`** |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | **`$0`**<br>**`$1, $2...`** `${1:-default}` `${10}`<br>**`$#`**<br>**`$*`**<br>**`getopts`** `"m:h" arg` `$OPTARG`<br>**`$@`**<br>**`shift`** |
| 🔀 | **[Conditionals](notes/conditionals.md)** | **`if`** `-eq` `[ condition ]` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` `-f` `elif` `else` `[ ] && [ ]` `[ ] \|\| [ ]` `=` `!=` `-z` `-n` `-e` `-d` `-r` `-w` `-x` `-s` `-L` `-p` `-S` `-t` `-nt` `-ot` `-a` `-o`<br>**`case`** `m) command;;`<br>**`test`**<br>**`[`**<br>**`true`**<br>**`false`**<br>**`[[ ]]`** `==` `=~` `< >` `&& \|\|` `@(a\|b)` `!(...)`<br>**`BASH_REMATCH`** |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | **`for`** `line in; do; done` `element in ${array[@]}; do; done`<br>**`while`** `[ ]; do; done` `read line; do; done` `true`<br>**`seq`**<br>**`{0000..9999}`** `{a,b,c}`<br>**`break`** |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | **`function name(){ commands }`** `ctrl_c(){}` `local`<br>**`trap`** `ctrl_c INT` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | **`wait`** `$!`<br>**`mktemp`** `-d`<br>**`tput`** `civis` `cnorm` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | **`/dev/tcp/$ip/$port`** `/dev/udp/$ip/$port` `bash -i >& ... 0>&1`<br>**`curl`** `-s` `-X GET` `-o` `-w` `--connect-timeout` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | **`batcat`**<br>**`js-beautify`** |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
