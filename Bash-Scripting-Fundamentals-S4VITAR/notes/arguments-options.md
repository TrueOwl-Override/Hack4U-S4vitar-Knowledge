# 🎯 Arguments & Options

> Read what's passed to your script: positional arguments and flags parsed with getopts.

**Bash Scripting** · **6** commands · **2** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`$0`](#cmd-0) | Holds the name of the script as it was called from the terminal |
| [`$1, $2...`](#cmd-1-2) | The first, second (and so on) argument passed on the command line |
| [`$@`](#cmd-sym-36-64) | All the arguments, each kept separate; always prefer "$@" over "$*" |
| [`shift`](#cmd-shift) | Drops $1 and shifts the rest one position left; handy for parsing |
| [`$#`](#cmd-sym-36-35) | Holds the number of arguments passed on the command line |
| [`$*`](#cmd-sym-36-42) | Holds all the arguments passed on the command line in a single variable |

---

<a id="cmd-0"></a>

## `$0`

Holds the name of the script as it was called from the terminal

```bash
echo $0
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-1-2"></a>

## `$1, $2...`

The first, second (and so on) argument passed on the command line

```bash
./script.sh hello world → echo $1
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `${1:-default}` | Takes the first argument, or a default value if there isn't one | `target=${1:-scanme.nmap.org}` |
| `${10}` | From argument 10 on, you need braces | `echo ${10}` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-64"></a>

## `$@`

All the arguments, each kept separate; always prefer "$@" over "$*"

```bash
for a in "$@"; do echo "[$a]"; done
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-shift"></a>

## `shift`

Drops $1 and shifts the rest one position left; handy for parsing

```bash
shift; echo $1
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-35"></a>

## `$#`

Holds the number of arguments passed on the command line

```bash
echo "Got $# arguments"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-42"></a>

## `$*`

Holds all the arguments passed on the command line in a single variable

```bash
echo "Arguments: $*"
```

<sub>[⬆ Back to top](#commands)</sub>
