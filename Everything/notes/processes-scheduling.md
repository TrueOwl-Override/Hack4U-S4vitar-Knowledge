# ⏱️ Processes & Scheduling

> See what's running, limit or repeat commands, and schedule jobs with cron.

**Linux Commands** · **10** commands · **13** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`ps`](#cmd-ps) | Shows the processes running on the system |
| [`kill`](#cmd-kill) | Ends a process by its PID |
| [`fg`](#cmd-fg) | Brings a background process back to the foreground |
| [`sleep`](#cmd-sleep) | Pauses for a given number of seconds |
| [`timeout`](#cmd-timeout) | Runs a command and kills it automatically if it goes over the given time |
| [`time`](#cmd-time) | Measures how long a command takes to run |
| [`watch`](#cmd-watch) | Runs a command repeatedly at regular intervals and shows its updated output |
| [`crontab`](#cmd-crontab) | Lets you view, create and edit a user's Cron jobs (scheduled tasks) |
| [`pkill`](#cmd-pkill) | Kills processes by name instead of by PID |
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
| `-faux` | Shows every process from every user in a detailed tree format | `ps -faux` |
| `-eo command` | Shows only the command column for each process | `ps -eo command` |
| `aux` | Shows every process of every user, with its owner | `ps aux \| grep root \| head` |

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
| `-9` | Forces the process to end immediately (SIGKILL) | `kill -9 1234` |
| `-15` | SIGTERM: ends the process in an orderly way (exit code 143) | `kill -15 $!` |
| `%` | Kills a job by its job number (after Ctrl + Z) | `kill %1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-fg"></a>

## `fg`

Brings a background process back to the foreground

```bash
sleep 60 & then fg
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sleep"></a>

## `sleep`

Pauses for a given number of seconds

```bash
sleep 5
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `0.4` | Accepts decimals to pause for less than a second | `sleep 0.4` |

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

<a id="cmd-time"></a>

## `time`

Measures how long a command takes to run

```bash
time sleep 2
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-watch"></a>

## `watch`

Runs a command repeatedly at regular intervals and shows its updated output

```bash
watch ls -l /tmp
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-n 1` | Sets the interval in seconds between runs; here every 1 second | `watch -n 1 ls -l /tmp` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-crontab"></a>

## `crontab`

Lets you view, create and edit a user's Cron jobs (scheduled tasks)

```bash
crontab -l
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `* * * * * command` | Cron job format: Minute Hour Day-of-month Month Day-of-week Command; * means every value (every minute, hour, etc.) | `* * * * * /home/user/script.sh` |
| `*/3 * * * *` | */N means every N units; this one runs every 3 minutes | `*/3 * * * * /home/user/script.sh` |
| `* * * * 6` | The 5th field is the day of the week: 0 or 7 Sunday ... 6 Saturday; this one runs every minute on Saturdays | `* * * * 6 /home/user/script.sh` |

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
