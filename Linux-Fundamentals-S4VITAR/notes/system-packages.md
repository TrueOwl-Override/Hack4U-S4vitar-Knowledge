# 📦 System & Packages

> Update the system, manage packages and check system info.

**Linux Commands** · **9** commands · **7** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`apt`](#cmd-apt) | Debian's package manager: refreshes the package list (update) and installs available updates (upgrade) |
| [`parrot-upgrade`](#cmd-parrot-upgrade) | Safely upgrades Parrot OS without breaking its own components |
| [`reboot`](#cmd-reboot) | Restarts the machine |
| [`neofetch`](#cmd-neofetch) | Shows system info (kernel, RAM, CPU, distro logo) in a visual way |
| [`uname`](#cmd-uname) | Shows information about the system and its kernel |
| [`mount`](#cmd-mount) | Mounts a partition or shows the mounted ones |
| [`umount`](#cmd-umount) | Unmounts a partition so nothing else writes to it |
| [`lsblk`](#cmd-lsblk) | Lists disks and partitions as a tree |
| [`fstrim`](#cmd-fstrim) | Tells an SSD which blocks are free (TRIM) so it can wipe them |

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
