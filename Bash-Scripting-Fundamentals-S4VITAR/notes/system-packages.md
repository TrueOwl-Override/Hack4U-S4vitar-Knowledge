# 📦 System & Packages

> Update the system, manage packages and check system info.

**Linux Commands** · **3** commands · **5** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`uname`](#cmd-uname) | Shows information about the system and its kernel |
| [`uptime`](#cmd-uptime) | Shows how long the system has been on |
| [`date`](#cmd-date) | Shows or formats the system date and time |

---

<a id="cmd-uname"></a>

## `uname`

Shows information about the system and its kernel

```bash
uname -a
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-m` | Shows the system architecture | `uname -m` |
| `-r` | Shows only the kernel version | `uname -r` |
| `-a` | Shows all the system information (kernel, hostname, architecture) | `uname -a` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-uptime"></a>

## `uptime`

Shows how long the system has been on

```bash
uptime
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-p` | Shows the uptime in a readable format | `uptime -p` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-date"></a>

## `date`

Shows or formats the system date and time

```bash
date '+%H:%M:%S'
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `+%Y-%m-%d %H:%M:%S` | Format: %Y year, %m month, %d day, %H hour, %M minute, %S second | `date '+%Y-%m-%d %H:%M:%S'` |

<sub>[⬆ Back to top](#commands)</sub>
