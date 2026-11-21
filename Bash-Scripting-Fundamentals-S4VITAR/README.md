<div align="center">

# 🐚 Bash Scripting Fundamentals · S4VITAR

**My notes from S4vitar's Bash scripting fundamentals course: commands, parameters and scripting, grouped by what they do, with copy-ready examples.**

![Commands](https://img.shields.io/badge/commands-128-2ea44f?style=for-the-badge) ![Parameters](https://img.shields.io/badge/parameters-169-0969da?style=for-the-badge) ![Categories](https://img.shields.io/badge/categories-24-8250df?style=for-the-badge)

🌐 **Searchable web version:** [`docs/index.html`](docs/index.html)

</div>

---

## 📚 Categories

### 🐧 Linux Commands

| | Category | What's inside | Commands |
|:-:|:--|:--|:--|
| 📁 | **[Navigation & Files](notes/navigation-files.md)** | Move around the filesystem and create, copy, delete and inspect files and folders. | `file` `ls` `ln` `readlink` `touch` `rm` `mkdir` `basename` `pushd` `popd` `cp` |
| 📝 | **[Viewing & Editing Files](notes/viewing-editing-files.md)** | Read files in the terminal, page through output, compare files and edit text. | `cat` `head` `man` `tail` `diff` `vi` |
| 🔍 | **[Searching](notes/searching.md)** | Find files anywhere on the system and locate where commands live. | `which` `grep` `find` `xargs` |
| ✂️ | **[Text Processing](notes/text-processing.md)** | Filter, cut, transform and sort text coming from files or other commands. | `echo` `awk` `tr` `sort` `uniq` `tee` `cut` `column` `wc` |
| 🔀 | **[Pipes, Redirection & Operators](notes/pipes-redirection-operators.md)** | Chain commands, decide where output and errors go, and run things in the background. | `\|` `&>/dev/null` `2>/dev/null` `&&` `\|\|` `&` `<` `<<` `<<<` `>` `\|&` `2>` `<(command)` `>(command)` `>&2` `\` |
| 👤 | **[Users & Groups](notes/users-groups.md)** | Check who you are, switch users, and manage accounts, passwords and groups. | `sudo` `id` |
| 🔐 | **[Permissions & Attributes](notes/permissions-attributes.md)** | Control who can read, write and run files, plus special attributes and capabilities. | `chmod` `getcap` `lsattr` |
| 🐚 | **[Shell & Environment](notes/shell-environment.md)** | Shell settings, environment variables, aliases and handy history shortcuts. | `bash` `sh` `env` `export` `type` `shopt` |
| ⏱️ | **[Processes & Scheduling](notes/processes-scheduling.md)** | See what's running, limit or repeat commands, and schedule jobs with cron. | `ps` `timeout` `pkill` `kill` `sleep` `pgrep` |
| 🌐 | **[Networking](notes/networking.md)** | Network interfaces, open ports and sockets, and raw connections with netcat. | `ping` `hostname` `ip` `dig` `ifconfig` `nc` `lsof` `ss` |
| 🔑 | **[SSH & Remote Access](notes/ssh-remote-access.md)** | Connect to remote machines and manage SSH keys. | `ssh-keygen` |
| 🧬 | **[Binary, Encoding & Compression](notes/binary-encoding-compression.md)** | Inspect binary data, convert between formats, hash files and work with archives. | `bc` `strings` `dd` `hexedit` `xxd` |
| 📦 | **[System & Packages](notes/system-packages.md)** | Update the system, manage packages and check system info. | `uname` `uptime` `date` |
| 🗂️ | **[System & Device Files](notes/system-device-files.md)** | Special device files and system paths you read from or write to. | `/dev/null` `/dev/zero` `/dev/urandom` |

### 🐚 Bash Scripting

| | Category | What's inside | Commands |
|:-:|:--|:--|:--|
| 📜 | **[Script Basics](notes/script-basics.md)** | The building blocks of every script: the shebang, exit codes, command substitution and subshells. | `(command)` `$()` `$$` `exit` `#!/bin/bash` `./script.sh` `source` `set` `$!` `$_` `$SECONDS` `$BASHPID` `{ }` |
| 📦 | **[Variables & Arithmetic](notes/variables-arithmetic.md)** | Store values in variables, read them back and do math with them. | `declare` `array=(1 2 3)` `variable="Hello"` `$(( ))` `$variable or ${variable}` `unset` `read` `IFS` `(( ))` |
| ➗ | **[Operators](notes/operators.md)** | Assign, do math, compare numbers and text, and negate conditions. | `**` `/` |
| 🎯 | **[Arguments & Options](notes/arguments-options.md)** | Read what's passed to your script: positional arguments and flags parsed with getopts. | `$0` `$1, $2...` `$@` `shift` `$#` `$*` |
| 🔀 | **[Conditionals](notes/conditionals.md)** | Make decisions with if and case. | `if` `test` `[` `true` `false` `[[ ]]` `BASH_REMATCH` |
| 🔁 | **[Loops & Sequences](notes/loops-sequences.md)** | Repeat work with for and while, and generate sequences to loop over. | `seq` `for` `while` |
| 🧩 | **[Functions & Signals](notes/functions-signals.md)** | Group commands into functions and react to signals like Ctrl+C. | `function name(){ commands }` |
| ⚙️ | **[Jobs, Temp Files & Terminal](notes/jobs-temp-files-terminal.md)** | Wait for background jobs, set time limits, create temp files and control the cursor. | `wait` |
| 🌐 | **[Networking in Bash](notes/networking-in-bash.md)** | Open TCP connections from pure Bash and make HTTP requests. | `/dev/tcp/$ip/$port` `curl` |
| 🛠️ | **[Helper Tools](notes/helper-tools.md)** | Handy tools for reading and prettifying code while you script. | `bat` |

## 🔤 A–Z index

| Command | What it does | Category |
|:--|:--|:--|
| [`2>`](notes/pipes-redirection-operators.md#cmd-2) | Redirects stderr (errors) to a file | 🔀 Pipes, Redirection & Operators |
| [`2>/dev/null`](notes/pipes-redirection-operators.md#cmd-2-dev-null) | Sends errors (stderr) to /dev/null so they aren't shown | 🔀 Pipes, Redirection & Operators |
| [`array=(1 2 3)`](notes/variables-arithmetic.md#cmd-array-1-2-3) | Declares an array (a list of values); in zsh indexes start at 1, so test it in bash | 📦 Variables & Arithmetic |
| [`awk`](notes/text-processing.md#cmd-awk) | Processes and filters text by columns | ✂️ Text Processing |
| [`basename`](notes/navigation-files.md#cmd-basename) | Keeps just the file name, without the path | 📁 Navigation & Files |
| [`bash`](notes/shell-environment.md#cmd-bash) | Bash, the shell that runs what you type; launching it starts a new shell, useful to get an interactive shell, run scripts or escape restricted shells | 🐚 Shell & Environment |
| [`BASH_REMATCH`](notes/conditionals.md#cmd-bash-rematch) | Array filled after =~ : [0] is the whole match, [1],[2]... the capture groups | 🔀 Conditionals |
| [`bat`](notes/helper-tools.md#cmd-bat) | Like cat, but with syntax highlighting and line numbers (called batcat on Debian/Parrot) | 🛠️ Helper Tools |
| [`bc`](notes/binary-encoding-compression.md#cmd-bc) | Terminal calculator; does arithmetic and converts numbers between bases (hexadecimal, decimal) | 🧬 Binary, Encoding & Compression |
| [`cat`](notes/viewing-editing-files.md#cmd-cat) | Prints a file's contents to the terminal | 📝 Viewing & Editing Files |
| [`chmod`](notes/permissions-attributes.md#cmd-chmod) | Changes the permissions of a file or folder; + adds and - removes a permission | 🔐 Permissions & Attributes |
| [`column`](notes/text-processing.md#cmd-column) | Arranges incoming text into aligned columns, like a table | ✂️ Text Processing |
| [`cp`](notes/navigation-files.md#cmd-cp) | Copies files or folders from one place to another | 📁 Navigation & Files |
| [`curl`](notes/networking-in-bash.md#cmd-curl) | Sends requests to a URL from the terminal (HTTP, HTTPS, etc.) and shows the response | 🌐 Networking in Bash |
| [`cut`](notes/text-processing.md#cmd-cut) | Extracts parts of a line of text, splitting it by a delimiter | ✂️ Text Processing |
| [`date`](notes/system-packages.md#cmd-date) | Shows or formats the system date and time | 📦 System & Packages |
| [`dd`](notes/binary-encoding-compression.md#cmd-dd) | Copies and converts data block by block (create files, images, wipe) | 🧬 Binary, Encoding & Compression |
| [`declare`](notes/variables-arithmetic.md#cmd-declare) | Declares variables with attributes, for example making them integers | 📦 Variables & Arithmetic |
| [`diff`](notes/viewing-editing-files.md#cmd-diff) | Compares two files line by line and shows the differences between them | 📝 Viewing & Editing Files |
| [`dig`](notes/networking.md#cmd-dig) | Resolves a domain's IP (DNS lookup) | 🌐 Networking |
| [`echo`](notes/text-processing.md#cmd-echo) | Prints text or a variable's value to the terminal | ✂️ Text Processing |
| [`env`](notes/shell-environment.md#cmd-env) | Lists the environment variables of the current session | 🐚 Shell & Environment |
| [`exit`](notes/script-basics.md#cmd-exit) | Closes the current session or leaves an elevated one (like root); in a script, ends it with an exit code: 0 if it worked, anything else if it failed | 📜 Script Basics |
| [`export`](notes/shell-environment.md#cmd-export) | Turns a variable into an environment variable, available to other processes started from that terminal | 🐚 Shell & Environment |
| [`false`](notes/conditionals.md#cmd-false) | Always returns exit code 1 (failure) | 🔀 Conditionals |
| [`file`](notes/navigation-files.md#cmd-file) | Analyzes a file and tells you what kind of content it has, regardless of its extension | 📁 Navigation & Files |
| [`find`](notes/searching.md#cmd-find) | Searches for files and folders by criteria (name, type, permissions, date, etc.) | 🔍 Searching |
| [`for`](notes/loops-sequences.md#cmd-for) | Loops over a list of items one by one, running a block of code for each | 🔁 Loops & Sequences |
| [`function name(){ commands }`](notes/functions-signals.md#cmd-function-name-commands) | Defines a custom function that groups several commands under one name | 🧩 Functions & Signals |
| [`getcap`](notes/permissions-attributes.md#cmd-getcap) | Shows the capabilities assigned to a file | 🔐 Permissions & Attributes |
| [`grep`](notes/searching.md#cmd-grep) | Searches and filters lines of text that match a pattern | 🔍 Searching |
| [`head`](notes/viewing-editing-files.md#cmd-head) | Shows the first lines of a file or text (10 by default) | 📝 Viewing & Editing Files |
| [`hexedit`](notes/binary-encoding-compression.md#cmd-hexedit) | Opens a file in a hex editor to view and change its bytes | 🧬 Binary, Encoding & Compression |
| [`hostname`](notes/networking.md#cmd-hostname) | Shows or changes the machine's network name | 🌐 Networking |
| [`id`](notes/users-groups.md#cmd-id) | Shows user info: UID, GID and the groups they belong to | 👤 Users & Groups |
| [`if`](notes/conditionals.md#cmd-if) | Runs a block if the condition is true and another one (else) if it isn't; closed with fi | 🔀 Conditionals |
| [`ifconfig`](notes/networking.md#cmd-ifconfig) | Shows and configures network interfaces (the IP of each card) | 🌐 Networking |
| [`IFS`](notes/variables-arithmetic.md#cmd-ifs) | Variable that sets the separator Bash uses to split text (default: space) | 📦 Variables & Arithmetic |
| [`ip`](notes/networking.md#cmd-ip) | Shows and manages network interfaces and their IPs | 🌐 Networking |
| [`kill`](notes/processes-scheduling.md#cmd-kill) | Ends a process by its PID | ⏱️ Processes & Scheduling |
| [`ln`](notes/navigation-files.md#cmd-ln) | Creates a link to a file or folder | 📁 Navigation & Files |
| [`ls`](notes/navigation-files.md#cmd-ls) | Lists the files and folders in the current directory | 📁 Navigation & Files |
| [`lsattr`](notes/permissions-attributes.md#cmd-lsattr) | Shows a file's special attributes (beyond the normal permissions) | 🔐 Permissions & Attributes |
| [`lsof`](notes/networking.md#cmd-lsof) | Lists the files opened by running processes, including network connections | 🌐 Networking |
| [`man`](notes/viewing-editing-files.md#cmd-man) | Opens the manual of a command | 📝 Viewing & Editing Files |
| [`mkdir`](notes/navigation-files.md#cmd-mkdir) | Creates a new folder | 📁 Navigation & Files |
| [`nc`](notes/networking.md#cmd-nc) | Netcat: creates manual TCP/UDP connections to send and receive data, scan ports or open remote shells | 🌐 Networking |
| [`pgrep`](notes/processes-scheduling.md#cmd-pgrep) | Finds a process's PID by name | ⏱️ Processes & Scheduling |
| [`ping`](notes/networking.md#cmd-ping) | Sends packets to a host to check if it's reachable | 🌐 Networking |
| [`pkill`](notes/processes-scheduling.md#cmd-pkill) | Kills processes by name instead of by PID | ⏱️ Processes & Scheduling |
| [`popd`](notes/navigation-files.md#cmd-popd) | Returns to the directory saved by pushd | 📁 Navigation & Files |
| [`ps`](notes/processes-scheduling.md#cmd-ps) | Shows the processes running on the system | ⏱️ Processes & Scheduling |
| [`pushd`](notes/navigation-files.md#cmd-pushd) | Enters a directory and saves the previous one on a stack | 📁 Navigation & Files |
| [`read`](notes/variables-arithmetic.md#cmd-read) | Saves what the user types into a variable | 📦 Variables & Arithmetic |
| [`readlink`](notes/navigation-files.md#cmd-readlink) | Shows where a link points | 📁 Navigation & Files |
| [`rm`](notes/navigation-files.md#cmd-rm) | Deletes files or folders | 📁 Navigation & Files |
| [`seq`](notes/loops-sequences.md#cmd-seq) | Generates a sequence of numbers within a range, handy for loops | 🔁 Loops & Sequences |
| [`set`](notes/script-basics.md#cmd-set) | Changes shell options inside a script | 📜 Script Basics |
| [`sh`](notes/shell-environment.md#cmd-sh) | Runs a script with sh, ignoring its shebang (sh is often a link to dash or bash) | 🐚 Shell & Environment |
| [`shift`](notes/arguments-options.md#cmd-shift) | Drops $1 and shifts the rest one position left; handy for parsing | 🎯 Arguments & Options |
| [`shopt`](notes/shell-environment.md#cmd-shopt) | Turns shell options on or off (e.g. extglob for extended patterns) | 🐚 Shell & Environment |
| [`sleep`](notes/processes-scheduling.md#cmd-sleep) | Pauses for a given number of seconds | ⏱️ Processes & Scheduling |
| [`sort`](notes/text-processing.md#cmd-sort) | Sorts the lines of a file or text, alphabetically or numerically | ✂️ Text Processing |
| [`source`](notes/script-basics.md#cmd-source) | Runs a script in the current process, so its variables stay afterwards | 📜 Script Basics |
| [`ss`](notes/networking.md#cmd-ss) | Shows information about active network sockets, a modern alternative to netstat | 🌐 Networking |
| [`ssh-keygen`](notes/ssh-remote-access.md#cmd-ssh-keygen) | Generates an SSH key pair (public and private) to log in without a password | 🔑 SSH & Remote Access |
| [`strings`](notes/binary-encoding-compression.md#cmd-strings) | Shows the readable text strings (ASCII) inside a binary file; useful for finding hidden info | 🧬 Binary, Encoding & Compression |
| [`sudo`](notes/users-groups.md#cmd-sudo) | Runs a single command with administrator privileges without switching users | 👤 Users & Groups |
| [`tail`](notes/viewing-editing-files.md#cmd-tail) | Shows the last lines of a file (10 by default), useful for logs | 📝 Viewing & Editing Files |
| [`tee`](notes/text-processing.md#cmd-tee) | Shows a command's output on screen and saves it to a file at the same time | ✂️ Text Processing |
| [`test`](notes/conditionals.md#cmd-test) | Evaluates a condition; same as [ ] (returns 0 true, 1 false) | 🔀 Conditionals |
| [`timeout`](notes/processes-scheduling.md#cmd-timeout) | Runs a command and kills it automatically if it goes over the given time | ⏱️ Processes & Scheduling |
| [`touch`](notes/navigation-files.md#cmd-touch) | Creates an empty file, or updates its modification date if it already exists | 📁 Navigation & Files |
| [`tr`](notes/text-processing.md#cmd-tr) | Translates or replaces characters of the incoming text with others | ✂️ Text Processing |
| [`true`](notes/conditionals.md#cmd-true) | Always returns exit code 0 (success) | 🔀 Conditionals |
| [`type`](notes/shell-environment.md#cmd-type) | Tells what a name is: builtin, keyword, alias or a file on disk | 🐚 Shell & Environment |
| [`uname`](notes/system-packages.md#cmd-uname) | Shows information about the system and its kernel | 📦 System & Packages |
| [`uniq`](notes/text-processing.md#cmd-uniq) | Removes consecutive duplicate lines; usually used after sort | ✂️ Text Processing |
| [`unset`](notes/variables-arithmetic.md#cmd-unset) | Deletes a variable or an element of an array | 📦 Variables & Arithmetic |
| [`uptime`](notes/system-packages.md#cmd-uptime) | Shows how long the system has been on | 📦 System & Packages |
| [`variable="Hello"`](notes/variables-arithmetic.md#cmd-variable-hello) | Declares a variable and assigns it some text (no spaces around the =) | 📦 Variables & Arithmetic |
| [`vi`](notes/viewing-editing-files.md#cmd-vi) | Advanced, powerful text editor with a steeper learning curve than nano | 📝 Viewing & Editing Files |
| [`wait`](notes/jobs-temp-files-terminal.md#cmd-wait) | Waits for one or more background processes to finish before continuing | ⚙️ Jobs, Temp Files & Terminal |
| [`wc`](notes/text-processing.md#cmd-wc) | Counts the lines, words or characters of a text | ✂️ Text Processing |
| [`which`](notes/searching.md#cmd-which) | Shows where a command or program is installed | 🔍 Searching |
| [`while`](notes/loops-sequences.md#cmd-while) | Repeats a block of code while a condition is true | 🔁 Loops & Sequences |
| [`xargs`](notes/searching.md#cmd-xargs) | Takes a command's output and uses it as the arguments of another command | 🔍 Searching |
| [`xxd`](notes/binary-encoding-compression.md#cmd-xxd) | Shows a file's contents in hexadecimal | 🧬 Binary, Encoding & Compression |
| [`#!/bin/bash`](notes/script-basics.md#cmd-bin-bash) | Shebang: the first line of a script, telling the system to run it with Bash | 📜 Script Basics |
| [`$!`](notes/script-basics.md#cmd-sym-36-33) | PID of the last process launched in the background | 📜 Script Basics |
| [`$#`](notes/arguments-options.md#cmd-sym-36-35) | Holds the number of arguments passed on the command line | 🎯 Arguments & Options |
| [`$$`](notes/script-basics.md#cmd-sym-36-36) | Special variable with the PID of the current shell | 📜 Script Basics |
| [`$(( ))`](notes/variables-arithmetic.md#cmd-sym-36-40-40-41-41) | Arithmetic expansion: does the math inside and returns the result | 📦 Variables & Arithmetic |
| [`$()`](notes/script-basics.md#cmd-sym-36-40-41) | Runs the command inside the parentheses and uses its output (command substitution) | 📜 Script Basics |
| [`$*`](notes/arguments-options.md#cmd-sym-36-42) | Holds all the arguments passed on the command line in a single variable | 🎯 Arguments & Options |
| [`$0`](notes/arguments-options.md#cmd-0) | Holds the name of the script as it was called from the terminal | 🎯 Arguments & Options |
| [`$1, $2...`](notes/arguments-options.md#cmd-1-2) | The first, second (and so on) argument passed on the command line | 🎯 Arguments & Options |
| [`$@`](notes/arguments-options.md#cmd-sym-36-64) | All the arguments, each kept separate; always prefer "$@" over "$*" | 🎯 Arguments & Options |
| [`$_`](notes/script-basics.md#cmd-sym-36-95) | Last argument of the previous command | 📜 Script Basics |
| [`$BASHPID`](notes/script-basics.md#cmd-bashpid) | Real PID of the process, also inside subshells | 📜 Script Basics |
| [`$SECONDS`](notes/script-basics.md#cmd-seconds) | Seconds elapsed since the shell started | 📜 Script Basics |
| [`$variable or ${variable}`](notes/variables-arithmetic.md#cmd-variable-or-variable) | Reads a variable's value; the braces mark where the name ends when it's stuck to other text | 📦 Variables & Arithmetic |
| [`&`](notes/pipes-redirection-operators.md#cmd-sym-38) | Runs the command in the background, leaving the terminal free | 🔀 Pipes, Redirection & Operators |
| [`&&`](notes/pipes-redirection-operators.md#cmd-sym-38-38) | Runs the next command only if the previous one succeeded | 🔀 Pipes, Redirection & Operators |
| [`&>/dev/null`](notes/pipes-redirection-operators.md#cmd-dev-null) | Sends both normal output and errors to /dev/null, hiding everything | 🔀 Pipes, Redirection & Operators |
| [`(( ))`](notes/variables-arithmetic.md#cmd-sym-40-40-41-41) | Arithmetic evaluation; handy to increment counters without $ | 📦 Variables & Arithmetic |
| [`(command)`](notes/script-basics.md#cmd-command) | Runs the command in a subshell, a child process separate from the main script | 📜 Script Basics |
| [`**`](notes/operators.md#cmd-sym-42-42) | Raises a number to a power inside $(( )) | ➗ Operators |
| [`./script.sh`](notes/script-basics.md#cmd-script-sh) | Runs the script with the interpreter in its shebang (needs execute permission) | 📜 Script Basics |
| [`/`](notes/operators.md#cmd-sym-47) | Divides inside $(( )); keeps only the integer part | ➗ Operators |
| [`/dev/null`](notes/system-device-files.md#cmd-dev-null) | The black hole: anything sent here is discarded | 🗂️ System & Device Files |
| [`/dev/tcp/$ip/$port`](notes/networking-in-bash.md#cmd-dev-tcp-ip-port) | Special Bash path that opens a TCP connection to an IP and port as if it were a file, no netcat needed | 🌐 Networking in Bash |
| [`/dev/urandom`](notes/system-device-files.md#cmd-dev-urandom) | A source of random data | 🗂️ System & Device Files |
| [`/dev/zero`](notes/system-device-files.md#cmd-dev-zero) | An endless source of null bytes | 🗂️ System & Device Files |
| [`<`](notes/pipes-redirection-operators.md#cmd-sym-60) | Redirects a file as the command's input | 🔀 Pipes, Redirection & Operators |
| [`<(command)`](notes/pipes-redirection-operators.md#cmd-command) | Process substitution: treats a command's output as if it were a file | 🔀 Pipes, Redirection & Operators |
| [`<<`](notes/pipes-redirection-operators.md#cmd-sym-60-60) | Here document: feeds everything up to the end word as input | 🔀 Pipes, Redirection & Operators |
| [`<<<`](notes/pipes-redirection-operators.md#cmd-sym-60-60-60) | Here string: feeds a literal string as input | 🔀 Pipes, Redirection & Operators |
| [`>`](notes/pipes-redirection-operators.md#cmd-sym-62) | Redirects output to a file, overwriting its contents | 🔀 Pipes, Redirection & Operators |
| [`>&2`](notes/pipes-redirection-operators.md#cmd-2) | Sends the output to stderr (e.g. usage messages) | 🔀 Pipes, Redirection & Operators |
| [`>(command)`](notes/pipes-redirection-operators.md#cmd-command) | Process substitution: passes output to a command as if it were a file | 🔀 Pipes, Redirection & Operators |
| [`[`](notes/conditionals.md#cmd-sym-91) | The test brackets; evaluate a condition (needs spaces inside) | 🔀 Conditionals |
| [`[[ ]]`](notes/conditionals.md#cmd-sym-91-91-93-93) | Bash's improved test: no word-splitting, allows && \|\| inside, glob == and regex =~ (use [ ] only for sh) | 🔀 Conditionals |
| [`\`](notes/pipes-redirection-operators.md#cmd-sym-92) | At the end of a line, splits a long command across several lines | 🔀 Pipes, Redirection & Operators |
| [`{ }`](notes/script-basics.md#cmd-sym-123-125) | Groups commands in the current shell (variables persist; needs ; before }) | 📜 Script Basics |
| [`\|`](notes/pipes-redirection-operators.md#cmd-sym-124) | Pipe: sends one command's output as the next command's input | 🔀 Pipes, Redirection & Operators |
| [`\|&`](notes/pipes-redirection-operators.md#cmd-sym-124-38) | Short form of 2>&1 \| : pipes stdout AND stderr to the next command | 🔀 Pipes, Redirection & Operators |
| [`\|\|`](notes/pipes-redirection-operators.md#cmd-sym-124-124) | Runs the next command only if the previous one failed | 🔀 Pipes, Redirection & Operators |

## 🛠️ How to update

The data lives in [`data/`](data): [`categories.csv`](data/categories.csv), [`commands.csv`](data/commands.csv) and [`parameters.csv`](data/parameters.csv). After editing them, run:

```bash
python3 scripts/build.py
```

This rebuilds this README, the notes in [`notes/`](notes) and the web page in [`docs/`](docs).

> 💡 To publish the web page: **Settings → Pages → Branch `main` / folder `/docs`**.
