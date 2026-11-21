# 📦 System & Packages

> Update the system, manage packages and check system info.

**Linux Commands** · **7** commands · **7** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`apt`](#cmd-apt) | Debian's package manager: refreshes the package list (update) and installs available updates (upgrade) |
| [`parrot-upgrade`](#cmd-parrot-upgrade) | Safely upgrades Parrot OS without breaking its own components |
| [`reboot`](#cmd-reboot) | Restarts the machine |
| [`neofetch`](#cmd-neofetch) | Shows system info (kernel, RAM, CPU, distro logo) in a visual way |
| [`uname`](#cmd-uname) | Shows information about the system and its kernel |
| [`uptime`](#cmd-uptime) | Shows how long the system has been on |
| [`date`](#cmd-date) | Shows or formats the system date and time |

---

<a id="cmd-apt"></a>

## `apt`

Debian's package manager: refreshes the package list (update) and installs available updates (upgrade)

```bash
sudo apt update
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `update` | Refreshes the list of available packages from the repositories without installing anything | `sudo apt update` |
| `upgrade` | Installs updates for the packages you have installed (don't use it on Parrot) | `sudo apt upgrade` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-parrot-upgrade"></a>

## `parrot-upgrade`

Safely upgrades Parrot OS without breaking its own components

```bash
sudo parrot-upgrade
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-reboot"></a>

## `reboot`

Restarts the machine

```bash
sudo reboot
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-neofetch"></a>

## `neofetch`

Shows system info (kernel, RAM, CPU, distro logo) in a visual way

```bash
neofetch
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-uname"></a>

## `uname`

Shows information about the system and its kernel

```bash
uname -a
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-a` | Shows all the system information (kernel, hostname, architecture) | `uname -a` |
| `-r` | Shows only the kernel version | `uname -r` |
| `-m` | Shows the system architecture | `uname -m` |

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
