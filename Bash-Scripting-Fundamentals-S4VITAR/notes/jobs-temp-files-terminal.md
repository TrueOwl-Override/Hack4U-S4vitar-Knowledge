# ⚙️ Jobs, Temp Files & Terminal

> Wait for background jobs, set time limits, create temp files and control the cursor.

**Bash Scripting** · **1** commands · **1** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`wait`](#cmd-wait) | Waits for one or more background processes to finish before continuing |

---

<a id="cmd-wait"></a>

## `wait`

Waits for one or more background processes to finish before continuing

```bash
sleep 5 & wait
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `$!` | Waits for a background process and collects its exit code | `sleep 5 & wait $!` |

<sub>[⬆ Back to top](#commands)</sub>
