# ✂️ Text Processing

> Filter, cut, transform and sort text coming from files or other commands.

**Linux Commands** · **11** commands · **48** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`echo`](#cmd-echo) | Prints text or a variable's value to the terminal |
| [`awk`](#cmd-awk) | Processes and filters text by columns |
| [`cut`](#cmd-cut) | Extracts parts of a line of text, splitting it by a delimiter |
| [`tr`](#cmd-tr) | Translates or replaces characters of the incoming text with others |
| [`sed`](#cmd-sed) | Finds, replaces, deletes or modifies text in a file or stream, usually with regular expressions |
| [`sort`](#cmd-sort) | Sorts the lines of a file or text, alphabetically or numerically |
| [`wc`](#cmd-wc) | Counts the lines, words or characters of a text |
| [`uniq`](#cmd-uniq) | Removes consecutive duplicate lines; usually used after sort |
| [`tee`](#cmd-tee) | Shows a command's output on screen and saves it to a file at the same time |
| [`sponge`](#cmd-sponge) | Reads all of its input before writing it to a file, avoiding problems when overwriting the same file you're reading |
| [`column`](#cmd-column) | Arranges incoming text into aligned columns, like a table |

---

<a id="cmd-echo"></a>

## `echo`

Prints text or a variable's value to the terminal

```bash
echo "Hello world"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `$PATH` | Variable holding the folders where the system looks for commands | `echo $PATH` |
| `$HOME` | Variable holding the path of the user's home folder | `echo $HOME` |
| `$SHELL` | Variable holding the path of the shell in use (bash, zsh) | `echo $SHELL` |
| `$?` | Exit code of the last command (0 = success, anything else = error) | `ls /doesnotexist ; echo $?` |
| `-e` | Enables special characters (\n, \t) in the printed text | `echo -e "line1\nline2"` |
| `-e "\n"` | \n is a line break; it needs the -e flag | `echo -e "Hello\nWorld"` |
| `-e "\t"` | \t is a tab; it needs the -e flag | `echo -e "Name\tAge"` |
| `-n` | Doesn't add the final line break, so whatever comes next stays on the same line | `echo -n "Bet: "; read initial_bet` |
| `"obase=10; ibase=16; $hexNum" \| bc` | Converts a variable's hexadecimal value to decimal using bc | `hexNum="FF"; echo "obase=10; ibase=16; $hexNum" \| bc` |
| `'$HOME'` | Single quotes print the text literally, without expanding variables (double quotes do expand them) | `echo '$HOME' → $HOME` |
| `$ZSH_VERSION` | Variable holding the zsh version (empty if you're not in zsh) | `echo $ZSH_VERSION` |
| `$BASH_VERSION` | Variable holding the bash version | `echo $BASH_VERSION` |
| `\$ \" \\` | Backslash escapes a character so it's taken literally (\$, \", \\) | `echo "string \$test"; echo "C:\\Users\\user"` |
| `$'...'` | $'...' interprets \t and \n without needing -e | `echo $'hello\tbye'` |
| `$a+$b` | Concatenates the text of both variables; it does NOT add (use $((a+b)) for that) | `echo $a+$b` |
| `$USER` | Variable with the current user | `echo $USER` |
| `$PWD` | Variable with the current directory | `echo $PWD` |
| `$OLDPWD` | Variable with the previous directory | `echo $OLDPWD` |
| `$TERM` | Variable with the terminal type | `echo $TERM` |
| `$HOSTNAME` | Variable with the machine name (may be empty in zsh) | `echo $HOSTNAME` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-awk"></a>

## `awk`

Processes and filters text by columns

```bash
awk '{print $2}' data.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `'{print $1}'` | Prints the first column of each line | `ls -l \| awk '{print $1}'` |
| `'NR==2'` | Shows only line number 2 (NR = record number) | `awk 'NR==2' file.txt` |
| `FS="/"` | Sets "/" as the field separator (FS) to split the text into columns | `echo "/home/john" \| awk '{print $2}' FS="/"` |
| `'{print $2}' FS=":"` | Uses ":" as the field separator (FS) and prints the second column of each line | `echo "a:b:c" \| awk '{print $2}' FS=":"` |
| `'NF{print $NF}'` | Prints the last field of each line; NF is the number of fields and $NF the value of the last one | `echo "one two three" \| awk 'NF{print $NF}'` |
| `"/name: \"Forge\"/,/resuelta:/"` | Prints the block of lines from the one matching the first pattern up to the one matching the second | `awk "/name: \"Forge\"/,/resuelta:/" bundle.js` |
| `-F` | Sets the field separator | `awk -F: '{print $2}' /etc/passwd` |
| `NR>1 {print $N}` | Skips the first line (the header) and prints a field | `ss -tn \| awk 'NR>1 {print $5}'` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-cut"></a>

## `cut`

Extracts parts of a line of text, splitting it by a delimiter

```bash
cut -d ":" -f 1 /etc/passwd
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-d` | Sets the delimiter used to split the text into columns | `cut -d ":" -f 1 /etc/passwd` |
| `-f` | Selects the field (column) number to extract | `cut -d ":" -f 3 /etc/passwd` |
| `-d ':' -f 2` | Splits each line using ":" as the delimiter and extracts only the second field | `echo "a:b:c" \| cut -d ':' -f 2` |
| `-f1,7` | Extracts several fields at once (here 1 and 7) | `cut -d: -f1,7 /etc/passwd` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-tr"></a>

## `tr`

Translates or replaces characters of the incoming text with others

```bash
echo "a:b:c" | tr ':' ' '
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `':' ' '` | Replaces every ":" with a space in the processed text | `echo "a:b:c" \| tr ':' ' '` |
| `'[A-Za-z]' '[N-ZA-Mn-za-m]'` | Replaces each letter with the one 13 positions ahead, applying the ROT13 cipher | `echo "Uryyb" \| tr '[A-Za-z]' '[N-ZA-Mn-za-m]'` |
| `-d ' '` | Deletes every space from the processed text | `echo "h o l a" \| tr -d ' '` |
| `' ' ','` | Replaces spaces with commas | `echo "a b c" \| tr ' ' ','` |
| `' ' '\n'` | Turns spaces into newlines | `echo "a b c" \| tr ' ' '\n'` |
| `-dc` | Deletes everything that's NOT in the given set (delete complement) | `cat /dev/urandom \| tr -dc 'a-zA-Z0-9' \| head -c 16` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sed"></a>

## `sed`

Finds, replaces, deletes or modifies text in a file or stream, usually with regular expressions

```bash
sed 's/old/new/g' file.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `'s/^ *//'` | Removes the spaces at the start of each line | `echo "   hello" \| sed 's/^ *//'` |
| `s/old/new/` | Substitutes text (s/^/ / adds spaces at the start of each line) | `sed 's/HTTP/s4vitar/'` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sort"></a>

## `sort`

Sorts the lines of a file or text, alphabetically or numerically

```bash
sort names.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-u` | Sorts and removes repeated lines | `sort -u output.txt` |
| `-n` | Sorts numerically instead of alphabetically | `sort -n numbers.txt` |
| `-rn` | Sorts numerically, highest to lowest | `sort -rn counts.txt` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-wc"></a>

## `wc`

Counts the lines, words or characters of a text

```bash
cat file.txt | wc
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-c` | Counts the characters (including the line break) | `echo "$line" \| wc -c` |
| `-l` | Counts the lines | `find / -perm -4000 2>&1 \| wc -l` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-uniq"></a>

## `uniq`

Removes consecutive duplicate lines; usually used after sort

```bash
sort names.txt | uniq
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-u` | Shows only completely unique lines, the ones that never repeat | `sort data.txt \| uniq -u` |
| `-c` | Counts how many times each line repeats | `sort ips.txt \| uniq -c` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-tee"></a>

## `tee`

Shows a command's output on screen and saves it to a file at the same time

```bash
ls | tee list.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-a` | Shows the output and appends it to the file without overwriting | `command \| tee -a output.txt` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sponge"></a>

## `sponge`

Reads all of its input before writing it to a file, avoiding problems when overwriting the same file you're reading

```bash
sort data.txt | sponge data.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-column"></a>

## `column`

Arranges incoming text into aligned columns, like a table

```bash
cat /etc/passwd | column -t -s ':'
```

<sub>[⬆ Back to top](#commands)</sub>
