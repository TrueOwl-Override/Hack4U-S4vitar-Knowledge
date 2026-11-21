<div align="center">

# 🐚 Bash Scripting Fundamentals · S4VITAR

**My notes from S4vitar's Bash scripting fundamentals course: commands, parameters and scripting, grouped by what they do, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-128-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-169-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-24-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | **`file`**<br>**`ls`** `-l /usr/bin/sh` `-l`<br>**`ln`** `-sf` `-s`<br>**`readlink`** `-f`<br>**`touch`**<br>**`rm`** `-r /tmp/$var`<br>**`mkdir`** `-p`<br>**`basename`**<br>**`pushd`**<br>**`popd`**<br>**`cp`** |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | **`cat`** `/etc/shells` `/etc/passwd` `/proc/net/tcp` `<< 'EOF'`<br>**`head`** `-n 1` `-c`<br>**`man`**<br>**`tail`** `-n 1` `-1`<br>**`diff`**<br>**`vi`** `:%s/old/new/g` |
| 🔍 | **[Searching](notes/searching.md)** | **`which`** `/usr/bin/bash /bin/bash /usr/bin/zsh /bin/zsh`<br>**`grep`** `-v` `-E` `-vE` `^pattern$` `-oE` `-q` `-qE` `-oP`<br>**`find`** `-perm` `-type` `-perm -o+w` `-perm -2000` `-name` `-user` `-writable`<br>**`xargs`** `(join lines)` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | **`echo`** `$SHELL` `$ZSH_VERSION` `$BASH_VERSION` `$?` `$PATH` `\$ \" \\` `$'...'` `-e` `$a+$b` `$USER` `$PWD` `$OLDPWD` `$TERM` `$HOSTNAME`<br>**`awk`** `-F` `'{print $1}'` `NR>1 {print $N}`<br>**`tr`** `' ' ','` `':' ' '` `' ' '\n'` `-dc`<br>**`sort`** `-u` `-rn` `-n`<br>**`uniq`** `-c`<br>**`tee`** `-a`<br>**`cut`** `-f1,7` `-d` `-f`<br>**`column`**<br>**`wc`** `-l` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | **`\|`**<br>**`&>/dev/null`**<br>**`2>/dev/null`**<br>**`&&`**<br>**`\|\|`**<br>**`&`**<br>**`<`**<br>**`<<`**<br>**`<<<`**<br>**`>`** `> file`<br>**`\|&`**<br>**`2>`**<br>**`<(command)`**<br>**`>(command)`**<br>**`>&2`**<br>**`\`** |
| 👤 | **[Users & Groups](notes/users-groups.md)** | **`sudo`** `pacman -S` `su`<br>**`id`** `-u` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | **`chmod`** `+x` `u-x` `-x` `o-rx` `755` `700`<br>**`getcap`** `-r`<br>**`lsattr`** |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | **`bash`** `script.sh` `-c`<br>**`sh`**<br>**`env`**<br>**`export`** `PATH=dir:$PATH` `variable_name`<br>**`type`**<br>**`shopt`** `-s` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | **`ps`** `aux`<br>**`timeout`** `1 bash -c ""`<br>**`pkill`**<br>**`kill`** `-15` `-9`<br>**`sleep`**<br>**`pgrep`** `-x` |
| 🌐 | **[Networking](notes/networking.md)** | **`ping`** `-c` `-W`<br>**`hostname`**<br>**`ip`** `a` `-4 addr show`<br>**`dig`** `+short`<br>**`ifconfig`**<br>**`nc`** `-nlvp`<br>**`lsof`** `-i:`<br>**`ss`** `-tln` `-tn` `-nltp` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | **`ssh-keygen`** `-f` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | **`bc`** `scale=2`<br>**`strings`**<br>**`dd`** `if= of=` `bs= count=`<br>**`hexedit`**<br>**`xxd`** `-l` `-p` |
| 📦 | **[System & Packages](notes/system-packages.md)** | **`uname`** `-m` `-r` `-a`<br>**`uptime`** `-p`<br>**`date`** `+%Y-%m-%d %H:%M:%S` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | **`/dev/null`**<br>**`/dev/zero`**<br>**`/dev/urandom`** |

### 🐚 Bash Scripting

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | **`(command)`** `(command) 2>/dev/null`<br>**`$()`** `` `command` ``<br>**`$$`**<br>**`exit`** `2` `0` `1`<br>**`#!/bin/bash`** `#!/usr/bin/bash` `#!/bin/sh` `#!/usr/bin/python3` `#!/usr/bin/perl` `#!/usr/bin/env bash`<br>**`./script.sh`**<br>**`source`** `~/.bashrc`<br>**`set`** `-u`<br>**`$!`**<br>**`$_`**<br>**`$SECONDS`**<br>**`$BASHPID`**<br>**`{ }`** |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | **`declare`** `-a`<br>**`array=(1 2 3)`** `${array[0]}` `${array[@]}`<br>**`variable="Hello"`** `${name:-default}` `${name:=default}`<br>**`$(( ))`** `**` `/`<br>**`$variable or ${variable}`**<br>**`unset`** `variable` `array[0]`<br>**`read`** `-ra ... <<<` `-r` `-a` `-p` `-rp`<br>**`IFS`**<br>**`(( ))`** `((var++))` `(( a > b ))` `((var+=5))` |
| ➗ | **[Operators](notes/operators.md)** | **`**`**<br>**`/`** |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | **`$0`**<br>**`$1, $2...`** `${1:-default}` `${10}`<br>**`$@`**<br>**`shift`**<br>**`$#`**<br>**`$*`** |
| 🔀 | **[Conditionals](notes/conditionals.md)** | **`if`** `=` `!=` `-z` `-n` `-e` `-d` `-r` `-w` `-x` `-s` `-L` `-p` `-S` `-t` `-nt` `-ot` `-a` `-o`<br>**`test`**<br>**`[`**<br>**`true`**<br>**`false`**<br>**`[[ ]]`** `==` `=~` `< >` `&& \|\|` `@(a\|b)` `!(...)`<br>**`BASH_REMATCH`** |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | **`seq`**<br>**`for`**<br>**`while`** |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | **`function name(){ commands }`** `local` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | **`wait`** `$!` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | **`/dev/tcp/$ip/$port`** `/dev/udp/$ip/$port` `bash -i >& ... 0>&1`<br>**`curl`** `-o` `-w` `--connect-timeout` `-s` `-X GET` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | **`bat`** |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
