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
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | **`pwd`** **`ls`** `-l` `-a` `/etc/cron.d` `/etc` `/bin /sbin /usr/sbin` `/dev` `-l /usr/bin/sh` **`cd`** `.` `..` `(absolute path)` `(relative path)` `/` `~` **`mkdir`** `-p` **`touch`** **`cp`** **`ln`** `-s` `-sf` **`rm`** `-r` `-f` `-r /tmp/$var` **`file`** **`stat`** **`*`** **`readlink`** `-f` **`basename`** **`pushd`** **`popd`** |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | **`cat`** `/etc/group` `/etc/passwd` `/etc/shells` `/etc/hosts` `/etc/shadow` `/etc/login.defs` `/home/bandit1/-` `./-` `$(pwd)/-` `"spaces in this filename"` `spaces\ in\ this\ filename` `s*` `home/bandit/s*` `~/.ssh/authorized_keys` `/proc/net/tcp` `<< 'EOF'` **`more`** `v` `:set shell=/bin/bash` `:shell` **`less`** **`head`** `-n 1` `-n -3` `-c` **`tail`** `-n` `-n 1` `-1` **`rev`** **`diff`** **`nano`** **`vi`** `V` `> / <` `y` `p / P` `d` `yy` `.file.swp` `:%s/old/new/g` **`man`** |
| 🔍 | **[Searching](notes/searching.md)** | **`find`** `-name` `-type` `-perm` `-group` `-user` `-writable` `-executable` `-readable` `.` `-size` `-perm -o+w` `-perm -2000` **`grep`** `-n` `-i` `-r "\w"` `-vE "bashrc\\|profile"` `-A 5` `-B 5` `-C 5` `-oP` `-v` `-E` `-vE` `^pattern$` `-oE` `-q` `-qE` **`which`** `/usr/bin/bash /bin/bash /usr/bin/zsh /bin/zsh` **`command`** `-v` **`xargs`** `(join lines)` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | **`echo`** `$PATH` `$HOME` `$SHELL` `$?` `-e` `-e "\n"` `-e "\t"` `-n` `"obase=10; ibase=16; $hexNum" \| bc` `'$HOME'` `$ZSH_VERSION` `$BASH_VERSION` `\$ \" \\` `$'...'` `$a+$b` `$USER` `$PWD` `$OLDPWD` `$TERM` `$HOSTNAME` **`awk`** `'{print $1}'` `'NR==2'` `FS="/"` `'{print $2}' FS=":"` `'NF{print $NF}'` `"/name: \"Forge\"/,/resuelta:/"` `-F` `NR>1 {print $N}` **`cut`** `-d` `-f` `-d ':' -f 2` `-f1,7` **`tr`** `':' ' '` `'[A-Za-z]' '[N-ZA-Mn-za-m]'` `-d ' '` `' ' ','` `' ' '\n'` `-dc` **`sed`** `'s/^ *//'` **`sort`** `-u` `-n` `-rn` **`wc`** `-c` `-l` **`uniq`** `-u` `-c` **`tee`** `-a` **`sponge`** **`column`** |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | **`\|`** **`;`** **`&&`** **`\|\|`** **`&`** **`>`** `/dev/null` `done > file` `> file` **`>>`** **`2>/dev/null`** **`2>&1`** `3>&1 1>&2 2>&3` **`&>/dev/null`** **`exec`** `3<> file` `>&3` `3>&-` `5>&3` `8>&3-` **`disown`** **`<`** **`<<`** **`<<<`** **`\|&`** **`2>`** **`<(command)`** **`>(command)`** **`>&2`** **`\`** |
| 👤 | **[Users & Groups](notes/users-groups.md)** | **`whoami`** **`id`** `-u` **`sudo`** `su` `pacman -Syu` `pacman -S` **`su`** **`useradd`** `-s` `-d` **`usermod`** `-a` `-G` **`passwd`** **`groupadd`** |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | **`chmod`** `o+w` `o-w` `755` `+t` `4000` `u+s` `2000` `g+s` `S / T` `+x` `u-x` `-x` `o-rx` `700` **`chown`** **`chgrp`** **`lsattr`** **`chattr`** `+i` `-V` **`getcap`** `-r` **`setcap`** `-r` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | **`bash`** `-p` `script.sh` `-c` **`export`** `variable_name` `TERM=xterm` `PATH=dir:$PATH` **`env`** **`tty`** **`alias`** `name='absolute_path'` **`!$`** **`!!`** **`!?`** **`Ctrl + L`** **`Tab`** **`Ctrl + C`** **`sh`** **`type`** **`shopt`** `-s` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | **`ps`** `-faux` `-eo command` `aux` **`kill`** `-9` `-15` **`fg`** **`sleep`** `0.4` **`timeout`** `1 bash -c ""` **`time`** **`watch`** `-n 1` **`crontab`** `* * * * * command` `*/3 * * * *` `* * * * 6` **`pkill`** **`pgrep`** `-x` |
| 🌐 | **[Networking](notes/networking.md)** | **`hostname`** `-I` **`ifconfig`** **`iwconfig`** **`ss`** `-nltp` `-tln` `-tn` **`lsof`** `-i:` **`nc`** `-nlvp` **`ncat`** `--ssl` **`ping`** `-c` `-W` **`ip`** `a` `-4 addr show` **`dig`** `+short` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | **`ssh`** `-p` `bandit0@bandit.labs.overthewire.org -p 2220` `-i` `user@host "command"` **`sshpass`** `-p` **`ssh-keygen`** `-f` **`ssh-copy-id`** `-i` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | **`strings`** **`xxd`** `-p` `-s` `-r` `-l` **`ghex`** **`base64`** `-d` **`md5sum`** **`bc`** `scale=2` **`7z`** `l` `x` **`dd`** `if= of=` `bs= count=` **`hexedit`** |
| 📦 | **[System & Packages](notes/system-packages.md)** | **`apt`** `update` `upgrade` **`parrot-upgrade`** **`reboot`** **`neofetch`** **`uname`** `-a` `-r` `-m` **`uptime`** `-p` **`date`** `+%Y-%m-%d %H:%M:%S` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | **`/dev/null`** **`/dev/zero`** **`/dev/urandom`** |
| 🌿 | **[Git](notes/git.md)** | **`git clone`** **`git log`** **`git show`** `(commit id)` `(tag name)` **`git branch`** `-a` **`git checkout`** `(commit id)` `(branch name)` **`git tag`** **`git add`** `-f` **`git commit`** `-m "identifier"` **`git push`** `-u origin branch` |

### 🐚 Bash Scripting

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | **`#!/bin/bash`** `#!/usr/bin/bash` `#!/bin/sh` `#!/usr/bin/python3` `#!/usr/bin/perl` `#!/usr/bin/env bash` **`exit`** `0` `1` `2` **`$()`** `` `command` `` **`(command)`** `(command) 2>/dev/null` **`#`** **`$$`** **`./script.sh`** **`source`** `~/.bashrc` **`set`** `-u` **`$!`** **`$_`** **`$SECONDS`** **`$BASHPID`** **`{ }`** |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | **`variable="Hello"`** `=$other_variable` `+="text"` `=""` `${name:-default}` `${name:=default}` **`$variable or ${variable}`** `"$variable text"` **`${color_variable}`** **`declare`** `-i` `-a` `-r` **`let`** `+=` `-=` **`$(( ))`** `+ - *` `%` `**` `/` **`array=(1 2 3)`** `$array` `${array[@]}` `${#array[@]}` `${array[0]}` `${array[-1]}` `+=(5)` `=(${array[@]})` **`unset`** `array[0]` `array[-1]` `variable` **`read`** `-ra ... <<<` `-r` `-a` `-p` `-rp` **`$RANDOM`** **`IFS`** **`(( ))`** `((var++))` `(( a > b ))` `((var+=5))` |
| ➗ | **[Operators](notes/operators.md)** | **`=`** **`+=`** **`+ - *`** **`%`** **`-eq`** **`-ne`** **`-gt`** **`-lt`** **`-le`** **`-ge`** **`==`** **`!`** **`**`** **`/`** |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | **`$0`** **`$1, $2...`** `${1:-default}` `${10}` **`$#`** **`$*`** **`getopts`** `"m:h" arg` `$OPTARG` **`$@`** **`shift`** |
| 🔀 | **[Conditionals](notes/conditionals.md)** | **`if`** `-eq` `[ condition ]` `-ne` `-gt` `-lt` `-le` `-ge` `==` `!` `-f` `elif` `else` `[ ] && [ ]` `[ ] \|\| [ ]` `=` `!=` `-z` `-n` `-e` `-d` `-r` `-w` `-x` `-s` `-L` `-p` `-S` `-t` `-nt` `-ot` `-a` `-o` **`case`** `m) command;;` **`test`** **`[`** **`true`** **`false`** **`[[ ]]`** `==` `=~` `< >` `&& \|\|` `@(a\|b)` `!(...)` **`BASH_REMATCH`** |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | **`for`** `line in; do; done` `element in ${array[@]}; do; done` **`while`** `[ ]; do; done` `read line; do; done` `true` **`seq`** **`{0000..9999}`** `{a,b,c}` **`break`** |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | **`function name(){ commands }`** `ctrl_c(){}` `local` **`trap`** `ctrl_c INT` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | **`wait`** `$!` **`mktemp`** `-d` **`tput`** `civis` `cnorm` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | **`/dev/tcp/$ip/$port`** `/dev/udp/$ip/$port` `bash -i >& ... 0>&1` **`curl`** `-s` `-X GET` `-o` `-w` `--connect-timeout` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | **`batcat`** **`js-beautify`** |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
