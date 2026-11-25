# 🧩 Functions & Signals

> Group commands into functions and react to signals like Ctrl+C.

**Bash Scripting** · **2** commands · **2** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`function name(){ commands }`](#cmd-function-name-commands) | Defines a custom function that groups several commands under one name |
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
| `local` | Creates a variable that only exists inside the function | `local file="$1"` |
| `name() { ...; }` | The function keyword is optional; call it just by its name | `my_function() { echo hi; }; my_function` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-return"></a>

## `return`

Leaves the function (optionally with an exit code) without ending the script

```bash
(( i == 3 )) && { echo "found 3"; return; }
```

<sub>[⬆ Back to top](#commands)</sub>
