# ⏱️ Processes & Scheduling

> See what's running, limit or repeat commands, and schedule jobs with cron.

**Linux Commands** · **6** commands · **5** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`ps`](#cmd-ps) | Shows the processes running on the system |
| [`timeout`](#cmd-timeout) | Runs a command and kills it automatically if it goes over the given time |
| [`pkill`](#cmd-pkill) | Kills processes by name instead of by PID |
| [`kill`](#cmd-kill) | Ends a process by its PID |
| [`sleep`](#cmd-sleep) | Pauses for a given number of seconds |
| [`pgrep`](#cmd-pgrep) | Finds a process's PID by name |

---

<a id="cmd-ps"></a>

## `ps`

Shows the processes running on the system

```bash
ps
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `aux` | Shows every process of every user, with its owner | `ps aux \| grep root \| head` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-timeout"></a>

## `timeout`

Runs a command and kills it automatically if it goes over the given time

```bash
timeout 5 ping 8.8.8.8
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `1 bash -c ""` | Runs a command with a 1-second limit; if it doesn't finish, it's cancelled | `timeout 1 bash -c "echo > /dev/tcp/127.0.0.1/22" && echo "open"` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-pkill"></a>

## `pkill`

Kills processes by name instead of by PID

```bash
sudo pkill netcat
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-kill"></a>

## `kill`

Ends a process by its PID

```bash
kill 1234
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-15` | SIGTERM: ends the process in an orderly way (exit code 143) | `kill -15 $!` |
| `-9` | Forces the process to end immediately (SIGKILL) | `kill -9 1234` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sleep"></a>

## `sleep`

Pauses for a given number of seconds

```bash
sleep 5
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-pgrep"></a>

## `pgrep`

Finds a process's PID by name

```bash
pgrep -x nginx
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-x` | Matches the exact process name | `pgrep -x nginx` |

<sub>[⬆ Back to top](#commands)</sub>
