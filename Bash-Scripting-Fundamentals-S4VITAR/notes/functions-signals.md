# 🧩 Functions & Signals

> Group commands into functions and react to signals like Ctrl+C.

**Bash Scripting** · **1** commands · **1** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`function name(){ commands }`](#cmd-function-name-commands) | Defines a custom function that groups several commands under one name |

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

<sub>[⬆ Back to top](#commands)</sub>
