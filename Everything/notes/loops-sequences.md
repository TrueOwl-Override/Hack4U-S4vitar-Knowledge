# 🔁 Loops & Sequences

> Repeat work with for and while, and generate sequences to loop over.

**Bash Scripting** · **7** commands · **12** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`for`](#cmd-for) | Loops over a list of items one by one, running a block of code for each |
| [`while`](#cmd-while) | Repeats a block of code while a condition is true |
| [`seq`](#cmd-seq) | Generates a sequence of numbers within a range, handy for loops |
| [`{0000..9999}`](#cmd-0000-9999) | Brace expansion: generates a sequence of values (here 0000 to 9999), useful as a counter in loops |
| [`break`](#cmd-break) | Leaves only the current loop; the script keeps running after it |
| [`until`](#cmd-until) | Repeats a block of code until a condition becomes true (the opposite of while) |
| [`continue`](#cmd-continue) | Skips the rest of the current iteration and jumps to the next one |

---

<a id="cmd-for"></a>

## `for`

Loops over a list of items one by one, running a block of code for each

```bash
for i in $(seq 1 5); do echo $i; done
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `line in; do; done` | Goes through the items of a list one by one and runs the block for each | `for line in $(cat list.txt); do echo $line; done` |
| `element in ${array[@]}; do; done` | Goes through each element of an array | `for element in ${my_array[@]}; do echo $element; done` |
| `((i=0; i<10; i++))` | C-style loop: start; condition; step | `for ((i=0; i<10; i++)); do echo $i; done` |
| `((i=1, j=10; i<10; i++, j--))` | C-style loop with two variables, separated by commas | `for ((i=1, j=10; i<10; i++, j--)); do echo "$i $j"; done` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-while"></a>

## `while`

Repeats a block of code while a condition is true

```bash
while [ $i -lt 5 ]; do echo $i; i=$((i+1)); done
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `[ ]; do; done` | Repeats the block while the condition inside the brackets is true | `while [ -f file.gz ]; do gunzip file.gz; done` |
| `read line; do; done` | Reads input line by line and runs the block for each line | `cat list.txt \| while read line; do echo $line; done` |
| `true` | Infinite loop; it only stops with break, exit or Ctrl+C | `while true; do echo "playing"; sleep 1; done` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-seq"></a>

## `seq`

Generates a sequence of numbers within a range, handy for loops

```bash
seq 1 10
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-0000-9999"></a>

## `{0000..9999}`

Brace expansion: generates a sequence of values (here 0000 to 9999), useful as a counter in loops

```bash
for i in {0000..9999}; do echo $i; done
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `{a,b,c}` | With commas, expands to each value of the list | `touch file.{summary,report,results}` |
| `{1..254..10}` | A third number sets the step (here 1, 11, 21...) | `echo {1..254..10}` |
| `{a..h}` | Also works with letters | `echo {a..h}` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-break"></a>

## `break`

Leaves only the current loop; the script keeps running after it

```bash
while true; do break; done; echo "out of the loop"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `2` | Leaves 2 nested loops at once (break N leaves N loops) | `for h in $hosts; do for p in $ports; do break 2; done; done` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-until"></a>

## `until`

Repeats a block of code until a condition becomes true (the opposite of while)

```bash
until ping -c 1 -W 1 "$ip" &>/dev/null; do sleep 1; done
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-continue"></a>

## `continue`

Skips the rest of the current iteration and jumps to the next one

```bash
for i in {1..5}; do [[ $i -eq 3 ]] && continue; echo $i; done
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `2` | Skips straight to the next iteration of the outer loop | `for t in $targets; do for p in / /admin; do continue 2; done; done` |

<sub>[⬆ Back to top](#commands)</sub>
