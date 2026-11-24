# 🔁 Loops & Sequences

> Repeat work with for and while, and generate sequences to loop over.

**Bash Scripting** · **6** commands · **6** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`seq`](#cmd-seq) | Generates a sequence of numbers within a range, handy for loops |
| [`for`](#cmd-for) | Loops over a list of items one by one, running a block of code for each |
| [`while`](#cmd-while) | Repeats a block of code while a condition is true |
| [`until`](#cmd-until) | Repeats a block of code until a condition becomes true (the opposite of while) |
| [`continue`](#cmd-continue) | Skips the rest of the current iteration and jumps to the next one |
| [`{0000..9999}`](#cmd-0000-9999) | Brace expansion: generates a sequence of values (here 0000 to 9999), useful as a counter in loops |

---

<a id="cmd-seq"></a>

## `seq`

Generates a sequence of numbers within a range, handy for loops

```bash
seq 1 10
```

<sub>[⬆ Back to top](#commands)</sub>

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
| `true` | Infinite loop; it only stops with break, exit or Ctrl+C | `while true; do echo "playing"; sleep 1; done` |

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
| `{1..254..10}` | A third number sets the step (here 1, 11, 21...) | `echo {1..254..10}` |
| `{a..h}` | Also works with letters | `echo {a..h}` |

<sub>[⬆ Back to top](#commands)</sub>
