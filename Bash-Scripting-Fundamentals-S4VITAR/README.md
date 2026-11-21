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
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | **`file`** **`ls`** `-l /usr/bin/sh` `-l` **`ln`** `-sf` `-s` **`readlink`** `-f` **`touch`** **`rm`** `-r /tmp/$var` **`mkdir`** `-p` **`basename`** **`pushd`** **`popd`** **`cp`** |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | **`cat`** `/etc/shells` `/etc/passwd` `/proc/net/tcp` `<< 'EOF'` **`head`** `-n 1` `-c` **`man`** **`tail`** `-n 1` `-1` **`diff`** **`vi`** `:%s/old/new/g` |
| 🔍 | **[Searching](notes/searching.md)** | **`which`** `/usr/bin/bash /bin/bash /usr/bin/zsh /bin/zsh` **`grep`** `-v` `-E` `-vE` `^pattern$` `-oE` `-q` `-qE` `-oP` **`find`** `-perm` `-type` `-perm -o+w` `-perm -2000` `-name` `-user` `-writable` **`xargs`** `(join lines)` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | **`echo`** `$SHELL` `$ZSH_VERSION` `$BASH_VERSION` `$?` `$PATH` `\$ \" \\` `$'...'` `-e` `$a+$b` `$USER` `$PWD` `$OLDPWD` `$TERM` `$HOSTNAME` **`awk`** `-F` `'{print $1}'` `NR>1 {print $N}` **`tr`** `' ' ','` `':' ' '` `' ' '\n'` `-dc` **`sort`** `-u` `-rn` `-n` **`uniq`** `-c` **`tee`** `-a` **`cut`** `-f1,7` `-d` `-f` **`column`** **`wc`** `-l` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | **`\|`** **`&>/dev/null`** **`2>/dev/null`** **`&&`** **`\|\|`** **`&`** **`<`** **`<<`** **`<<<`** **`>`** `> file` **`\|&`** **`2>`** **`<(command)`** **`>(command)`** **`>&2`** **`\`** |
| 👤 | **[Users & Groups](notes/users-groups.md)** | **`sudo`** `pacman -S` `su` **`id`** `-u` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | **`chmod`** `+x` `u-x` `-x` `o-rx` `755` `700` **`getcap`** `-r` **`lsattr`** |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | **`bash`** `script.sh` `-c` **`sh`** **`env`** **`export`** `PATH=dir:$PATH` `variable_name` **`type`** **`shopt`** `-s` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | **`ps`** `aux` **`timeout`** `1 bash -c ""` **`pkill`** **`kill`** `-15` `-9` **`sleep`** **`pgrep`** `-x` |
| 🌐 | **[Networking](notes/networking.md)** | **`ping`** `-c` `-W` **`hostname`** **`ip`** `a` `-4 addr show` **`dig`** `+short` **`ifconfig`** **`nc`** `-nlvp` **`lsof`** `-i:` **`ss`** `-tln` `-tn` `-nltp` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | **`ssh-keygen`** `-f` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | **`bc`** `scale=2` **`strings`** **`dd`** `if= of=` `bs= count=` **`hexedit`** **`xxd`** `-l` `-p` |
| 📦 | **[System & Packages](notes/system-packages.md)** | **`uname`** `-m` `-r` `-a` **`uptime`** `-p` **`date`** `+%Y-%m-%d %H:%M:%S` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | **`/dev/null`** **`/dev/zero`** **`/dev/urandom`** |

### 🐚 Bash Scripting

| | Category | Commands & parameters |
|:-:|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | **`(command)`** `(command) 2>/dev/null` **`$()`** `` `command` `` **`$$`** **`exit`** `2` `0` `1` **`#!/bin/bash`** `#!/usr/bin/bash` `#!/bin/sh` `#!/usr/bin/python3` `#!/usr/bin/perl` `#!/usr/bin/env bash` **`./script.sh`** **`source`** `~/.bashrc` **`set`** `-u` **`$!`** **`$_`** **`$SECONDS`** **`$BASHPID`** **`{ }`** |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | **`declare`** `-a` **`array=(1 2 3)`** `${array[0]}` `${array[@]}` **`variable="Hello"`** `${name:-default}` `${name:=default}` **`$(( ))`** `**` `/` **`$variable or ${variable}`** **`unset`** `variable` `array[0]` **`read`** `-ra ... <<<` `-r` `-a` `-p` `-rp` **`IFS`** **`(( ))`** `((var++))` `(( a > b ))` `((var+=5))` |
| ➗ | **[Operators](notes/operators.md)** | **`**`** **`/`** |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | **`$0`** **`$1, $2...`** `${1:-default}` `${10}` **`$@`** **`shift`** **`$#`** **`$*`** |
| 🔀 | **[Conditionals](notes/conditionals.md)** | **`if`** `=` `!=` `-z` `-n` `-e` `-d` `-r` `-w` `-x` `-s` `-L` `-p` `-S` `-t` `-nt` `-ot` `-a` `-o` **`test`** **`[`** **`true`** **`false`** **`[[ ]]`** `==` `=~` `< >` `&& \|\|` `@(a\|b)` `!(...)` **`BASH_REMATCH`** |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | **`seq`** **`for`** **`while`** |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | **`function name(){ commands }`** `local` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | **`wait`** `$!` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | **`/dev/tcp/$ip/$port`** `/dev/udp/$ip/$port` `bash -i >& ... 0>&1` **`curl`** `-o` `-w` `--connect-timeout` `-s` `-X GET` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | **`bat`** |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
