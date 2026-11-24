# 🐚 Shell & Environment

> Shell settings, environment variables, aliases and handy history shortcuts.

**Linux Commands** · **8** commands · **6** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`bash`](#cmd-bash) | Bash, the shell that runs what you type; launching it starts a new shell, useful to get an interactive shell, run scripts or escape restricted shells |
| [`sh`](#cmd-sh) | Runs a script with sh, ignoring its shebang (sh is often a link to dash or bash) |
| [`env`](#cmd-env) | Lists the environment variables of the current session |
| [`export`](#cmd-export) | Turns a variable into an environment variable, available to other processes started from that terminal |
| [`type`](#cmd-type) | Tells what a name is: builtin, keyword, alias or a file on disk |
| [`shopt`](#cmd-shopt) | Turns shell options on or off (e.g. extglob for extended patterns) |
| [`Ctrl + Z`](#cmd-ctrl-z) | Suspends the running process (resume with fg, kill it with kill %) |
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
| `script.sh` | Runs the script with bash, even without execute permission | `bash script.sh` |
| `-c` | Runs the command string passed to it (handy to test in a subshell) | `bash -c 'echo $test'` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sh"></a>

## `sh`

Runs a script with sh, ignoring its shebang (sh is often a link to dash or bash)

```bash
sh script.sh
```

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

<a id="cmd-export"></a>

## `export`

Turns a variable into an environment variable, available to other processes started from that terminal

```bash
export TERM=xterm
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `PATH=dir:$PATH` | Puts a directory first in the PATH; base of PATH hijacking | `export PATH=/tmp/evil:$PATH` |
| `variable_name` | Turns a variable into an environment variable available to other processes | `export MY_VAR="hello"` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-type"></a>

## `type`

Tells what a name is: builtin, keyword, alias or a file on disk

```bash
type [[
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-shopt"></a>

## `shopt`

Turns shell options on or off (e.g. extglob for extended patterns)

```bash
shopt -s extglob
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-s` | Enables (sets) a shell option | `shopt -s extglob` |
| `-s globstar` | Lets ** match files in any subfolder (recursive glob) | `shopt -s globstar; ls /etc/**/*.conf` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ctrl-z"></a>

## `Ctrl + Z`

Suspends the running process (resume with fg, kill it with kill %)

```bash
Ctrl + Z
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
