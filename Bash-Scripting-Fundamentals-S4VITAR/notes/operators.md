# ➗ Operators

> Assign, do math, compare numbers and text, and negate conditions.

**Bash Scripting** · **4** commands · **0** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`**`](#cmd-sym-42-42) | Raises a number to a power inside $(( )) |
| [`/`](#cmd-sym-47) | Divides inside $(( )); keeps only the integer part |
| [`!`](#cmd-sym-33) | Negates the condition: [ ! $a -le 0 ] is the same as [ $a -gt 0 ] |
| [`%`](#cmd-sym-37) | Modulo: returns the remainder of a division; handy to limit a range or tell even (0) from odd (1) |

---

<a id="cmd-sym-42-42"></a>

## `**`

Raises a number to a power inside $(( ))

```bash
echo $((2 ** 8))
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-47"></a>

## `/`

Divides inside $(( )); keeps only the integer part

```bash
echo $((10 / 3))
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-33"></a>

## `!`

Negates the condition: [ ! $a -le 0 ] is the same as [ $a -gt 0 ]

```bash
if [ ! "$money" -le 0 ]; then echo "still have money"; fi
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-37"></a>

## `%`

Modulo: returns the remainder of a division; handy to limit a range or tell even (0) from odd (1)

```bash
echo $(($RANDOM % 37))
```

<sub>[⬆ Back to top](#commands)</sub>
