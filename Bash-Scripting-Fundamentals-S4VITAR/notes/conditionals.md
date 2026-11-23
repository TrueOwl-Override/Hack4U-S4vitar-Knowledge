# 🔀 Conditionals

> Make decisions with if and case.

**Bash Scripting** · **8** commands · **29** parameters  ·  [⬅ Back to index](../README.md)

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
| [`case`](#cmd-case) | Compares a variable against several patterns and runs the block that matches; closed with esac |

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

---

<a id="cmd-case"></a>

## `case`

Compares a variable against several patterns and runs the block that matches; closed with esac

```bash
case $arg in m) echo "option m";; esac
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `*)` | Wildcard: the else of case, matches anything not matched above | `*) echo "unknown" ;;` |
| `a\|b)` | \| acts as OR between patterns | `s\|S\|yes\|YES) echo "Accepted" ;;` |
| `*.ext) [a-z])` | Patterns are globs, not regex: * any, ? one char, [...] a range | `*.sh\|*.bash) echo "Bash" ;;` |
| `;&` | Runs the block and falls through to the next WITHOUT checking it (fall-through) | `critical) ... ;& high) ... ;;` |
| `;;&` | Runs the block and keeps checking the remaining patterns | `80\|443) ... ;;& 443) ... ;;` |

<sub>[⬆ Back to top](#commands)</sub>
