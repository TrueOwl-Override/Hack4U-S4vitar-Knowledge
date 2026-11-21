# 🔀 Conditionals

> Make decisions with if and case.

**Bash Scripting** · **8** commands · **39** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`if`](#cmd-if) | Runs a block if the condition is true and another one (else) if it isn't; closed with fi |
| [`case`](#cmd-case) | Compares a variable against several patterns and runs the block that matches; closed with esac |
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
| `-eq` | Checks whether two numbers are equal | `if [ $a -eq $b ]; then echo "equal"; fi` |
| `[ condition ]` | Needs a space after [ and before ]; without it the condition fails, often with no error | `if [ $a -eq 1 ]; then echo "ok"; fi` |
| `-ne` | Checks whether two numbers are different (not equal) | `if [ $a -ne $b ]; then echo "different"; fi` |
| `-gt` | Checks whether the first number is greater than the second | `if [ $a -gt $b ]; then echo "greater"; fi` |
| `-lt` | Checks whether the first number is less than the second | `if [ $a -lt $b ]; then echo "less"; fi` |
| `-le` | Checks whether the first number is less than or equal to the second | `if [ $a -le $b ]; then echo "less or equal"; fi` |
| `-ge` | Checks whether the first number is greater than or equal to the second | `if [ $a -ge $b ]; then echo "greater or equal"; fi` |
| `==` | Compares two text strings to check they're equal | `if [ "$choice" == "even" ]; then echo "even"; fi` |
| `!` | Negates the condition: [ ! $a -le 0 ] is the same as [ $a -gt 0 ] | `if [ ! "$money" -le 0 ]; then echo "still have money"; fi` |
| `-f` | Checks whether the file exists and is a regular file (not a folder) | `if [ -f file.txt ]; then echo "exists"; fi` |
| `elif` | Inside an if, checks another condition when the previous one wasn't met (else if) | `if [ $n -eq 1 ]; then echo "one"; elif [ $n -eq 2 ]; then echo "two"; else echo "other"; fi` |
| `else` | Runs a block when none of the if or elif conditions were met; goes right before fi | `if [ -f file.txt ]; then echo "exists"; else echo "missing"; fi` |
| `[ ] && [ ]` | Joins two conditions; both must be true for the block to run | `if [ ${#my_sequence[@]} -ne 1 ] && [ ${#my_sequence[@]} -ne 0 ]; then echo "2 or more"; fi` |
| `[ ] \|\| [ ]` | Joins two conditions; it's enough for one of them to be true | `if [ $(($n % 2)) -eq 1 ] \|\| [ $n -eq 0 ]; then echo "odd or zero"; fi` |
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

<a id="cmd-case"></a>

## `case`

Compares a variable against several patterns and runs the block that matches; closed with esac

```bash
case $arg in m) echo "option m";; esac
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `m) command;;` | Defines a pattern inside case and the block to run if it matches; ;; closes that block | `case $arg in m) echo "option m";; esac` |

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
