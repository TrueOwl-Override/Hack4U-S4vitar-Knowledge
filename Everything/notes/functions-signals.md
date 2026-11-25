# 🧩 Functions & Signals

> Group commands into functions and react to signals like Ctrl+C.

**Bash Scripting** · **3** commands · **4** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`function name(){ commands }`](#cmd-function-name-commands) | Defines a custom function that groups several commands under one name |
| [`trap`](#cmd-trap) | Catches a signal (like Ctrl+C) and runs a function instead of stopping the script right away |
| [`return`](#cmd-return) | Leaves the function (optionally with an exit code) without ending the script |

---

<a id="cmd-function-name-commands"></a>

## `function name(){ commands }`

Defines a custom function that groups several commands under one name

```bash
function greet(){ echo "Hello $1"; }
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `ctrl_c(){}` | Defines the ctrl_c function that runs when trap catches Ctrl+C | `function ctrl_c(){ echo "Exiting..."; exit 1; }` |
| `local` | Creates a variable that only exists inside the function | `local file="$1"` |
| `name() { ...; }` | The function keyword is optional; call it just by its name | `my_function() { echo hi; }; my_function` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-trap"></a>

## `trap`

Catches a signal (like Ctrl+C) and runs a function instead of stopping the script right away

```bash
trap ctrl_c INT
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `ctrl_c INT` | Catches the Ctrl+C signal and runs the ctrl_c function instead of stopping the script | `trap ctrl_c INT` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-return"></a>

## `return`

Leaves the function (optionally with an exit code) without ending the script

```bash
(( i == 3 )) && { echo "found 3"; return; }
```

<sub>[⬆ Back to top](#commands)</sub>
