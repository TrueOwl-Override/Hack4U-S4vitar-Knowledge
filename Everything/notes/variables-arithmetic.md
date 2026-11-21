# 📦 Variables & Arithmetic

> Store values in variables, read them back and do math with them.

**Bash Scripting** · **12** commands · **33** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`variable="Hello"`](#cmd-variable-hello) | Declares a variable and assigns it some text (no spaces around the =) |
| [`$variable or ${variable}`](#cmd-variable-or-variable) | Reads a variable's value; the braces mark where the name ends when it's stuck to other text |
| [`${color_variable}`](#cmd-color-variable) | Variables that hold ANSI color codes; put one before the text to color it and close with the end-color variable |
| [`declare`](#cmd-declare) | Declares variables with attributes, for example making them integers |
| [`let`](#cmd-let) | Does arithmetic on variables |
| [`$(( ))`](#cmd-sym-36-40-40-41-41) | Arithmetic expansion: does the math inside and returns the result |
| [`array=(1 2 3)`](#cmd-array-1-2-3) | Declares an array (a list of values); in zsh indexes start at 1, so test it in bash |
| [`unset`](#cmd-unset) | Deletes a variable or an element of an array |
| [`read`](#cmd-read) | Saves what the user types into a variable |
| [`$RANDOM`](#cmd-random) | Returns a random number between 0 and 32767 each time it's read |
| [`IFS`](#cmd-ifs) | Variable that sets the separator Bash uses to split text (default: space) |
| [`(( ))`](#cmd-sym-40-40-41-41) | Arithmetic evaluation; handy to increment counters without $ |

---

<a id="cmd-variable-hello"></a>

## `variable="Hello"`

Declares a variable and assigns it some text (no spaces around the =)

```bash
greeting="Hello"; echo $greeting
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `=$other_variable` | Copies another variable's value into this one | `backup_bet=$initial_bet` |
| `+="text"` | With text, appends a string to the end of the current value | `bad_plays+="$random_number "` |
| `=""` | Starts the variable empty, ready to fill it later | `bad_plays=""` |
| `${name:-default}` | Uses 'default' if the variable is empty, without assigning it | `echo ${name:-Marcelo}` |
| `${name:=default}` | Uses 'default' and also assigns it to the variable | `echo ${name:=Marcelo}` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-variable-or-variable"></a>

## `$variable or ${variable}`

Reads a variable's value; the braces mark where the name ends when it's stuck to other text

```bash
file="data"; echo "${file}_backup.txt"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `"$variable text"` | Sticks fixed text right after a variable's value | `echo "$bad_plays]"` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-color-variable"></a>

## `${color_variable}`

Variables that hold ANSI color codes; put one before the text to color it and close with the end-color variable

```bash
greenColour="\e[0;32m\033[1m"; endColour="\033[0m\e[0m"; echo -e "${greenColour}[+] Hello${endColour}"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-declare"></a>

## `declare`

Declares variables with attributes, for example making them integers

```bash
declare -i counter=0
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-i` | Makes the variable an integer, so its value is treated as a number | `declare -i counter=0` |
| `-a` | Declares the variable as an array | `declare -a my_array=(1 2 3 4)` |
| `-r` | Makes the variable read-only; changing it gives a readonly variable error | `declare -r name="test"` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-let"></a>

## `let`

Does arithmetic on variables

```bash
let counter+=1
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `+=` | Adds a value to what the variable already holds | `let counter+=1` |
| `-=` | Subtracts a value from what the variable already holds; without let it gives an error | `let money-=$bet` |

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
| `+ - *` | Add, subtract and multiply inside the arithmetic expansion | `echo $((5 + 3)) $((5 - 3)) $((5 * 3))` |
| `%` | Modulo: the remainder of a division, for example to limit a random number to a range | `echo $(($RANDOM % 37))` |
| `**` | Raises to a power | `echo $((2 ** 8))` |
| `/` | Divides, keeping only the integer part | `echo $((10 / 3))` |

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
| `$array` | Without an index, shows only the first element | `echo $my_array` |
| `${array[@]}` | Shows all the elements | `echo ${my_array[@]}` |
| `${#array[@]}` | Gives the total number of elements | `echo ${#my_array[@]}` |
| `${array[0]}` | Gives the first element (the braces are required) | `echo ${my_array[0]}` |
| `${array[-1]}` | Gives the last element | `echo ${my_array[-1]}` |
| `+=(5)` | Adds an element to the end | `my_array+=(5)` |
| `=(${array[@]})` | Re-indexes the array after an unset, so positions don't stay shifted | `my_array=(${my_array[@]})` |

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
| `array[0]` | Deletes the first element of the array | `unset my_array[0]` |
| `array[-1]` | Deletes the last element of the array | `unset my_array[-1]` |
| `variable` | Removes a variable | `unset my_var` |

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

<a id="cmd-random"></a>

## `$RANDOM`

Returns a random number between 0 and 32767 each time it's read

```bash
echo $RANDOM
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ifs"></a>

## `IFS`

Variable that sets the separator Bash uses to split text (default: space)

```bash
IFS=',' read -ra ports <<< "21,22,80"
```

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

<sub>[⬆ Back to top](#commands)</sub>
