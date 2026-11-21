# 🔀 Conditionals

> Make decisions with if and case.

**Bash Scripting** · **7** commands · **24** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`if`](#cmd-if) | Runs a block if the condition is true and another one (else) if it isn't; closed with fi |
| [`test`](#cmd-test) | Evaluates a condition; same as [ ] (returns 0 true, 1 false) |
| [`[`](#cmd-sym-91) | The test brackets; evaluate a condition (needs spaces inside) |
| [`true`](#cmd-true) | Always returns exit code 0 (success) |
| [`false`](#cmd-false) | Always returns exit code 1 (failure) |
| [`[[ ]]`](#cmd-sym-91-91-93-93) | Bash's improved test: no word-splitting, allows && \|\| inside, glob == and regex =~ (use [ ] only for sh) |
| [`BASH_REMATCH`](#cmd-bash-rematch) | Array filled after =~ : [0] is the whole match, [1],[2]... the capture groups |

---

<a id="cmd-if"></a>

## `if`

Runs a block if the condition is true and another one (else) if it isn't; closed with fi

```bash
if [ $n -eq 1 ]; then echo "one"; else echo "other"; fi
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `=` | Compares two strings (equal) | `[ "$name" = "sabitar" ]` |
| `!=` | Compares two strings (not equal) | `[ "$name" != "test" ]` |
| `-z` | True if the variable is empty | `[ -z "$var" ]` |
| `-n` | True if the variable has content (always quote it) | `[ -n "$var" ]` |
| `-e` | True if it exists (any type) | `[ -e /etc/passwd ]` |
| `-d` | True if it's a directory | `[ -d "$HOME/.ssh" ]` |
| `-r` | True if you can read it | `[ -r /etc/shadow ]` |
| `-w` | True if you can write it | `[ -w /etc/crontab ]` |
| `-x` | True if you can run it | `[ -x "$(pwd)/script.sh" ]` |
| `-s` | True if it exists and is not empty | `[ -s file.txt ]` |
| `-L` | True if it's a symbolic link | `[ -L /usr/bin/sh ]` |
| `-p` | True if it's a named pipe | `[ -p mypipe ]` |
| `-S` | True if it's a socket | `[ -S /var/run/docker.sock ]` |
| `-t` | True if there's an interactive terminal (-t 0 checks stdin) | `[ -t 0 ]` |
| `-nt` | True if the first file is newer than the second (newer than) | `[ /etc/passwd -nt /tmp/passwd ]` |
| `-ot` | True if the first file is older than the second (older than) | `[ /etc/passwd -ot /etc/hosts ]` |
| `-a` | AND inside a single [ ] (fragile; prefer [ ] && [ ]) | `[ "$u" = root -a -f /etc/passwd ]` |
| `-o` | OR inside a single [ ] (prefer [ ] \|\| [ ]) | `[ -f a -o -f b ]` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-test"></a>

## `test`

Evaluates a condition; same as [ ] (returns 0 true, 1 false)

```bash
test -f /etc/passwd
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-91"></a>

## `[`

The test brackets; evaluate a condition (needs spaces inside)

```bash
[ -f /etc/passwd ]
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-true"></a>

## `true`

Always returns exit code 0 (success)

```bash
true; echo $?
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-false"></a>

## `false`

Always returns exit code 1 (failure)

```bash
false; echo $?
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-91-91-93-93"></a>

## `[[ ]]`

Bash's improved test: no word-splitting, allows && || inside, glob == and regex =~ (use [ ] only for sh)

```bash
[[ $var == *.py ]]
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `==` | Glob pattern match, pattern without quotes: *.py, arch*, *chi* | `[[ $name == *.py ]]` |
| `=~` | Matches against an extended regex (regex without quotes); fills BASH_REMATCH | `[[ $ip =~ ^[0-9]{1,3}(\.[0-9]{1,3}){3}$ ]]` |
| `< >` | Compares strings in alphabetical (lexicographic) order | `[[ abc < def ]]` |
| `&& \|\|` | Joins conditions inside a single [[ ]] (they error inside [ ]) | `[[ $u == root && $uid -eq 0 ]]` |
| `@(a\|b)` | extglob: matches one of several alternatives (needs shopt -s extglob) | `[[ $f == *.@(tar\|gz\|zip) ]]` |
| `!(...)` | extglob: matches everything except those | `[[ $f == !(*.sh\|*.py) ]]` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-bash-rematch"></a>

## `BASH_REMATCH`

Array filled after =~ : [0] is the whole match, [1],[2]... the capture groups

```bash
[[ $l =~ ([0-9.]+) ]]; echo ${BASH_REMATCH[1]}
```

<sub>[⬆ Back to top](#commands)</sub>
