# 📜 Script Basics

> The building blocks of every script: the shebang, exit codes, command substitution and subshells.

**Bash Scripting** · **14** commands · **12** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`#!/bin/bash`](#cmd-bin-bash) | Shebang: the first line of a script, telling the system to run it with Bash |
| [`exit`](#cmd-exit) | Closes the current session or leaves an elevated one (like root); in a script, ends it with an exit code: 0 if it worked, anything else if it failed |
| [`$()`](#cmd-sym-36-40-41) | Runs the command inside the parentheses and uses its output (command substitution) |
| [`(command)`](#cmd-command) | Runs the command in a subshell, a child process separate from the main script |
| [`#`](#cmd-sym-35) | Comments out a line so it doesn't run; handy to hide debug traces without deleting them |
| [`$$`](#cmd-sym-36-36) | Special variable with the PID of the current shell |
| [`./script.sh`](#cmd-script-sh) | Runs the script with the interpreter in its shebang (needs execute permission) |
| [`source`](#cmd-source) | Runs a script in the current process, so its variables stay afterwards |
| [`set`](#cmd-set) | Changes shell options inside a script |
| [`$!`](#cmd-sym-36-33) | PID of the last process launched in the background |
| [`$_`](#cmd-sym-36-95) | Last argument of the previous command |
| [`$SECONDS`](#cmd-seconds) | Seconds elapsed since the shell started |
| [`$BASHPID`](#cmd-bashpid) | Real PID of the process, also inside subshells |
| [`{ }`](#cmd-sym-123-125) | Groups commands in the current shell (variables persist; needs ; before }) |

---

<a id="cmd-bin-bash"></a>

## `#!/bin/bash`

Shebang: the first line of a script, telling the system to run it with Bash

```bash
#!/bin/bash   (first line of script.sh)
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `#!/usr/bin/bash` | Same as #!/bin/bash, using the other usual path of bash | `#!/usr/bin/bash` |
| `#!/bin/sh` | Runs the script with sh (dash or bash depending on the system); no arrays | `#!/bin/sh` |
| `#!/usr/bin/python3` | Shebang for a Python 3 script | `#!/usr/bin/python3` |
| `#!/usr/bin/perl` | Shebang for a Perl script | `#!/usr/bin/perl` |
| `#!/usr/bin/env bash` | Portable shebang: looks for bash in the PATH instead of a fixed path | `#!/usr/bin/env bash` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-exit"></a>

## `exit`

Closes the current session or leaves an elevated one (like root); in a script, ends it with an exit code: 0 if it worked, anything else if it failed

```bash
exit 0
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `0` | Ends the script with exit code 0, signalling success | `exit 0` |
| `1` | Ends the script with exit code 1, signalling an error | `exit 1` |
| `2` | Ends the script with code 2 (wrong usage / not found) | `exit 2` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-40-41"></a>

## `$()`

Runs the command inside the parentheses and uses its output (command substitution)

```bash
echo "I'm in $(pwd)"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `` `command` `` | Backticks do the same as $(...), capturing a command's output (he prefers $(...)) | `` ip=`whoami` `` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-command"></a>

## `(command)`

Runs the command in a subshell, a child process separate from the main script

```bash
(ping -c 1 192.168.1.1) &
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `(command) 2>/dev/null` | Redirecting the subshell hides the errors of the command inside it | `(echo '' > /dev/tcp/192.168.100.1/22) 2>/dev/null` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-35"></a>

## `#`

Comments out a line so it doesn't run; handy to hide debug traces without deleting them

```bash
# echo "debug: $number"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-36"></a>

## `$$`

Special variable with the PID of the current shell

```bash
echo $$
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-script-sh"></a>

## `./script.sh`

Runs the script with the interpreter in its shebang (needs execute permission)

```bash
chmod +x script.sh; ./script.sh
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-source"></a>

## `source`

Runs a script in the current process, so its variables stay afterwards

```bash
source script.sh
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `~/.bashrc` | Config files like ~/.bashrc and ~/.bash_profile are loaded with source | `source ~/.bashrc` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-set"></a>

## `set`

Changes shell options inside a script

```bash
set -u
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-u` | Aborts the script if you use an undefined variable | `set -u` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-33"></a>

## `$!`

PID of the last process launched in the background

```bash
sleep 100 & echo $!
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-95"></a>

## `$_`

Last argument of the previous command

```bash
mkdir /tmp/x; cd $_
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-seconds"></a>

## `$SECONDS`

Seconds elapsed since the shell started

```bash
echo "$SECONDS seconds"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-bashpid"></a>

## `$BASHPID`

Real PID of the process, also inside subshells

```bash
echo $BASHPID
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-123-125"></a>

## `{ }`

Groups commands in the current shell (variables persist; needs ; before })

```bash
{ cmd1; cmd2; }
```

<sub>[⬆ Back to top](#commands)</sub>
