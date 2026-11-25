# 📦 Variables & Arithmetic

> Store values in variables, read them back and do math with them.

**Bash Scripting** · **10** commands · **26** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`declare`](#cmd-declare) | Declares variables with attributes, for example making them integers |
| [`array=(1 2 3)`](#cmd-array-1-2-3) | Declares an array (a list of values); in zsh indexes start at 1, so test it in bash |
| [`variable="Hello"`](#cmd-variable-hello) | Declares a variable and assigns it some text (no spaces around the =) |
| [`$(( ))`](#cmd-sym-36-40-40-41-41) | Arithmetic expansion: does the math inside and returns the result |
| [`$variable or ${variable}`](#cmd-variable-or-variable) | Reads a variable's value; the braces mark where the name ends when it's stuck to other text |
| [`unset`](#cmd-unset) | Deletes a variable or an element of an array |
| [`read`](#cmd-read) | Saves what the user types into a variable |
| [`IFS`](#cmd-ifs) | Variable that sets the separator Bash uses to split text (default: space) |
| [`(( ))`](#cmd-sym-40-40-41-41) | Arithmetic evaluation; handy to increment counters without $ |
| [`mapfile`](#cmd-mapfile) | Reads lines of input into an array, one element per line |

---

<a id="cmd-declare"></a>

## `declare`

Declares variables with attributes, for example making them integers

```bash
declare -i counter=0
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-a` | Declares the variable as an array | `declare -a my_array=(1 2 3 4)` |
| `-A` | Declares an associative array (keys are text instead of numbers) | `declare -A students; students[marcelo]=30; echo ${students[marcelo]}` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-array-1-2-3"></a>

## `array=(1 2 3)`

Declares an array (a list of values); in zsh indexes start at 1, so test it in bash

```bash
my_array=(1 2 3 4)
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `${array[0]}` | Gives the first element (the braces are required) | `echo ${my_array[0]}` |
| `${array[@]}` | Shows all the elements | `echo ${my_array[@]}` |
| `array[$key]=value` | Assigns a value to a key (or index) of the array | `alerts[$port]=0` |
| `${array[$key]:-0}` | Reads a key's value, or 0 if that key doesn't exist yet | `count=${alerts[$port]:-0}` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-variable-hello"></a>

## `variable="Hello"`

Declares a variable and assigns it some text (no spaces around the =)

```bash
greeting="Hello"; echo $greeting
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `${name:-default}` | Uses 'default' if the variable is empty, without assigning it | `echo ${name:-Marcelo}` |
| `${name:=default}` | Uses 'default' and also assigns it to the variable | `echo ${name:=Marcelo}` |
| `${var##*:}` | Removes the longest match from the start (here everything up to the last :) | `port=${addr##*:}` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-36-40-40-41-41"></a>

## `$(( ))`

Arithmetic expansion: does the math inside and returns the result

```bash
money=$(($money - $initial_bet))
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `**` | Raises to a power | `echo $((2 ** 8))` |
| `/` | Divides, keeping only the integer part | `echo $((10 / 3))` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-variable-or-variable"></a>

## `$variable or ${variable}`

Reads a variable's value; the braces mark where the name ends when it's stuck to other text

```bash
file="data"; echo "${file}_backup.txt"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-unset"></a>

## `unset`

Deletes a variable or an element of an array

```bash
unset my_array[0]
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `variable` | Removes a variable | `unset my_var` |
| `array[0]` | Deletes the first element of the array | `unset my_array[0]` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-read"></a>

## `read`

Saves what the user types into a variable

```bash
echo -n "Bet: "; read initial_bet
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-ra ... <<<` | Reads text into an array; <<< (here-string) feeds the text to read | `IFS=',' read -ra ports <<< "$list"` |
| `-r` | Reads backslashes as literal text (raw) | `read -r line` |
| `-a` | Stores the input as an array | `read -a items` |
| `-p` | Shows a prompt before reading from the keyboard | `read -p "Type something: " answer` |
| `-rp` | Combines -r (raw) and -p (prompt) | `read -rp "Enter IP: " ip` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ifs"></a>

## `IFS`

Variable that sets the separator Bash uses to split text (default: space)

```bash
IFS=',' read -ra ports <<< "21,22,80"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `IFS=` | Empty IFS keeps leading and trailing spaces when reading lines | `while IFS= read -r line; do echo "$line"; done < file.txt` |
| `IFS=:` | Splits on : (e.g. the fields of /etc/passwd) | `while IFS=: read -r user _ uid _; do echo $user; done < /etc/passwd` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-40-40-41-41"></a>

## `(( ))`

Arithmetic evaluation; handy to increment counters without $

```bash
((count++))
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `((var++))` | Increments a counter (same as var=$((var+1))) | `((up_hosts++))` |
| `(( a > b ))` | Arithmetic comparison without $ or quotes (>, <, >=, <=, ==, && ) | `(( port > 0 && port <= 65535 ))` |
| `((var+=5))` | Compound arithmetic assignment (+=, -=, **, ...) | `((counter += 5))` |
| `((var--))` | Decrements a counter (same as var=$((var-1))) | `((j--))` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-mapfile"></a>

## `mapfile`

Reads lines of input into an array, one element per line

```bash
mapfile -t hosts < hosts.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-t` | Removes the trailing newline from each line it stores | `mapfile -t lines < <(cat /etc/hosts)` |
| `--help` | Shows mapfile's help (it's a builtin, so it has no man page of its own) | `mapfile --help` |

<sub>[⬆ Back to top](#commands)</sub>
