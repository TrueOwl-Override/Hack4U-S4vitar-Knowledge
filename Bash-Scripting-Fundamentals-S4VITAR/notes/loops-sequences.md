# 🔁 Loops & Sequences

> Repeat work with for and while, and generate sequences to loop over.

**Bash Scripting** · **3** commands · **0** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`seq`](#cmd-seq) | Generates a sequence of numbers within a range, handy for loops |
| [`for`](#cmd-for) | Loops over a list of items one by one, running a block of code for each |
| [`while`](#cmd-while) | Repeats a block of code while a condition is true |

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

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-while"></a>

## `while`

Repeats a block of code while a condition is true

```bash
while [ $i -lt 5 ]; do echo $i; i=$((i+1)); done
```

<sub>[⬆ Back to top](#commands)</sub>
