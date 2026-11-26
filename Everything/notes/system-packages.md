# 📦 System & Packages

> Update the system, manage packages and check system info.

**Linux Commands** · **19** commands · **16** parameters  ·  [⬅ Back to index](../README.md)

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
| [`notify-send`](#cmd-notify-send) | Shows a desktop notification (needs a notification daemon like dunst) |
| [`dunst`](#cmd-dunst) | Lightweight notification daemon that displays the notify-send pop-ups |
| [`mount`](#cmd-mount) | Mounts a partition or shows the mounted ones |
| [`umount`](#cmd-umount) | Unmounts a partition so nothing else writes to it |
| [`lsblk`](#cmd-lsblk) | Lists disks and partitions as a tree |
| [`fstrim`](#cmd-fstrim) | Tells an SSD which blocks are free (TRIM) so it can wipe them |
| [`df`](#cmd-df) | Shows disk usage per partition and which partition a path is on |
| [`sync`](#cmd-sync) | Forces pending data in memory to be written to disk |
| [`mkfs.ext4`](#cmd-mkfs-ext4) | Formats a partition (or image file) with the ext4 filesystem |
| [`blkdiscard`](#cmd-blkdiscard) | Discards every block of an SSD (TRIM), wiping it fast |
| [`nvme`](#cmd-nvme) | Manages NVMe SSDs (package nvme-cli) |
| [`systemctl`](#cmd-systemctl) | Manages systemd services and timers (start, stop, status) |

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
| `install` | Installs one or more packages from the repositories | `sudo apt install seclists` |

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
| `-d` | Shows a date other than now (e.g. '-1 day'); +%s prints it as a Unix timestamp | `date -d '-1 day' +%s` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-notify-send"></a>

## `notify-send`

Shows a desktop notification (needs a notification daemon like dunst)

```bash
notify-send "Port 80 open"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dunst"></a>

## `dunst`

Lightweight notification daemon that displays the notify-send pop-ups

```bash
dunst &
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-mount"></a>

## `mount`

Mounts a partition or shows the mounted ones

```bash
sudo mount /dev/sdb1 /mnt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-o remount,ro` | Remounts a partition read-only so nothing overwrites deleted data | `sudo mount -o remount,ro /dev/sdb1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-umount"></a>

## `umount`

Unmounts a partition so nothing else writes to it

```bash
sudo umount /dev/sdb1
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-lsblk"></a>

## `lsblk`

Lists disks and partitions as a tree

```bash
lsblk
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `--discard` | Shows whether each disk supports TRIM (DISC-GRAN and DISC-MAX not 0) | `lsblk --discard` |
| `-o` | Chooses which columns to show | `lsblk -o NAME,SIZE,MODEL,MOUNTPOINTS` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-fstrim"></a>

## `fstrim`

Tells an SSD which blocks are free (TRIM) so it can wipe them

```bash
sudo fstrim -v /
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-v` | Shows how many bytes were trimmed | `sudo fstrim -v /` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-df"></a>

## `df`

Shows disk usage per partition and which partition a path is on

```bash
df -h /home/mary
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-h` | Sizes in human-readable units (G, M) | `df -h` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sync"></a>

## `sync`

Forces pending data in memory to be written to disk

```bash
sync
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-mkfs-ext4"></a>

## `mkfs.ext4`

Formats a partition (or image file) with the ext4 filesystem

```bash
mkfs.ext4 /tmp/lab.img
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-blkdiscard"></a>

## `blkdiscard`

Discards every block of an SSD (TRIM), wiping it fast

```bash
sudo blkdiscard /dev/sdb
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-nvme"></a>

## `nvme`

Manages NVMe SSDs (package nvme-cli)

```bash
sudo nvme list
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `format -s 1` | Manufacturer secure erase of an NVMe SSD (destroys everything) | `sudo nvme format /dev/nvme0n1 -s 1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-systemctl"></a>

## `systemctl`

Manages systemd services and timers (start, stop, status)

```bash
systemctl status fstrim.timer
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `status` | Shows whether a service or timer is active and its latest logs | `systemctl status fstrim.timer` |

<sub>[⬆ Back to top](#commands)</sub>
