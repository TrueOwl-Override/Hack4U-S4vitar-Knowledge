# 🐚 Shell & Environment

> Shell settings, environment variables, aliases and handy history shortcuts.

**Linux Commands** · **11** commands · **4** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`bash`](#cmd-bash) | Bash, the shell that runs what you type; launching it starts a new shell, useful to get an interactive shell, run scripts or escape restricted shells |
| [`export`](#cmd-export) | Turns a variable into an environment variable, available to other processes started from that terminal |
| [`env`](#cmd-env) | Lists the environment variables of the current session |
| [`tty`](#cmd-tty) | Shows which terminal (console) you're in |
| [`alias`](#cmd-alias) | Creates a shortcut so a short word runs a longer command |
| [`!$`](#cmd-sym-33-36) | Stands for the last argument of the previous command, so you can reuse it |
| [`!!`](#cmd-sym-33-33) | Repeats the whole previous command; handy to rerun it with sudo |
| [`!?`](#cmd-sym-33-63) | Finds the most recent command in your history containing the given text and runs it again |
| [`Ctrl + L`](#cmd-ctrl-l) | Shortcut that clears the terminal screen without losing your history |
| [`Tab`](#cmd-tab) | Key that autocompletes commands, paths and file names |
| [`Ctrl + C`](#cmd-ctrl-c) | Shortcut that stops the command or script that's running |

---

<a id="cmd-bash"></a>

## `bash`

Bash, the shell that runs what you type; launching it starts a new shell, useful to get an interactive shell, run scripts or escape restricted shells

```bash
bash
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-p` | Starts the shell in privileged mode so the effective UID/GID aren't reset; useful to keep privileges gained through SUID | `bash -p` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-export"></a>

## `export`

Turns a variable into an environment variable, available to other processes started from that terminal

```bash
export TERM=xterm
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `variable_name` | Turns a variable into an environment variable available to other processes | `export MY_VAR="hello"` |
| `TERM=xterm` | Sets the terminal type; useful when a remote connection has compatibility issues | `export TERM=xterm` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-env"></a>

## `env`

Lists the environment variables of the current session

```bash
env
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-tty"></a>

## `tty`

Shows which terminal (console) you're in

```bash
tty
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-alias"></a>

## `alias`

Creates a shortcut so a short word runs a longer command

```bash
alias ll='ls -la'
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `name='absolute_path'` | Creates a shortcut that runs a long command or path with a short word | `alias ll='ls -la'` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-33-36"></a>

## `!$`

Stands for the last argument of the previous command, so you can reuse it

```bash
mkdir project  then  cd !$
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-33-33"></a>

## `!!`

Repeats the whole previous command; handy to rerun it with sudo

```bash
sudo !!
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-33-63"></a>

## `!?`

Finds the most recent command in your history containing the given text and runs it again

```bash
!?ssh
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ctrl-l"></a>

## `Ctrl + L`

Shortcut that clears the terminal screen without losing your history

```bash
Ctrl + L (same as typing clear)
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-tab"></a>

## `Tab`

Key that autocompletes commands, paths and file names

```bash
cd /ho + Tab → cd /home/
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ctrl-c"></a>

## `Ctrl + C`

Shortcut that stops the command or script that's running

```bash
Ctrl + C (while a script runs)
```

<sub>[⬆ Back to top](#commands)</sub>
