# 📁 Navigation & Files

> Move around the filesystem and create, copy, delete and inspect files and folders.

**Linux Commands** · **18** commands · **29** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`pwd`](#cmd-pwd) | Shows the full path of the current directory |
| [`ls`](#cmd-ls) | Lists the files and folders in the current directory |
| [`cd`](#cmd-cd) | Changes directory |
| [`mkdir`](#cmd-mkdir) | Creates a new folder |
| [`touch`](#cmd-touch) | Creates an empty file, or updates its modification date if it already exists |
| [`cp`](#cmd-cp) | Copies files or folders from one place to another |
| [`ln`](#cmd-ln) | Creates a link to a file or folder |
| [`rm`](#cmd-rm) | Deletes files or folders |
| [`file`](#cmd-file) | Analyzes a file and tells you what kind of content it has, regardless of its extension |
| [`stat`](#cmd-stat) | Shows detailed info about a file or directory: permissions, size and access/modification dates |
| [`*`](#cmd-sym-42) | Wildcard that matches anything, to select several files at once |
| [`readlink`](#cmd-readlink) | Shows where a link points |
| [`basename`](#cmd-basename) | Keeps just the file name, without the path |
| [`pushd`](#cmd-pushd) | Enters a directory and saves the previous one on a stack |
| [`popd`](#cmd-popd) | Returns to the directory saved by pushd |
| [`mv`](#cmd-mv) | Moves or renames files and folders |
| [`shred`](#cmd-shred) | Overwrites a file several times so it can't be recovered (unreliable on SSDs, journaling and CoW filesystems) |
| [`rsync`](#cmd-rsync) | Copies or syncs folders, sending only what changed (handy for backups to another disk) |

---

<a id="cmd-pwd"></a>

## `pwd`

Shows the full path of the current directory

```bash
pwd
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ls"></a>

## `ls`

Lists the files and folders in the current directory

```bash
ls /etc
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-l` | Detailed listing (permissions, owner, size, date) | `ls -l /etc` |
| `-a` | Shows all files including hidden ones (those starting with a dot) | `ls -a ~` |
| `/etc/cron.d` | Directory holding the configuration files of the system's Cron jobs | `ls -l /etc/cron.d` |
| `/etc` | Folder where the system's configuration files live | `ls /etc` |
| `/bin /sbin /usr/sbin` | Folders where programs are usually stored (it depends on the distro) | `ls /usr/sbin` |
| `/dev` | Folder with the system's devices; many of them aren't physical but virtual | `ls /dev` |
| `-l /usr/bin/sh` | On a link, shows where it points (sh → dash or bash) | `ls -l /usr/bin/sh` |
| `/home` | Folder holding each user's personal directory (/home/mary, /home/john) | `ls -l /home` |
| `~/.local/share/Trash/files/` | Trash folder of the desktop (files deleted with rm never go here) | `ls ~/.local/share/Trash/files/` |
| `/mnt` | Folder used to temporarily mount disks and partitions | `sudo mount /dev/nvme0n1p3 /mnt && ls /mnt/Users/` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-cd"></a>

## `cd`

Changes directory

```bash
cd /var/log
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `.` | Stays in the current folder | `cd .` |
| `..` | Goes up one level to the parent folder | `cd ..` |
| `(absolute path)` | Goes to a specific location starting from the system root | `cd /var/log` |
| `(relative path)` | Goes to a location relative to the current directory | `cd ../documents` |
| `/` | Goes straight to the system root | `cd /` |
| `~` | Goes to the user's home folder | `cd ~` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-mkdir"></a>

## `mkdir`

Creates a new folder

```bash
mkdir projects
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-p` | Doesn't fail if the folder exists, and can create nested paths | `mkdir -p a/b/c` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-touch"></a>

## `touch`

Creates an empty file, or updates its modification date if it already exists

```bash
touch new.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-cp"></a>

## `cp`

Copies files or folders from one place to another

```bash
cp file.txt copy.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ln"></a>

## `ln`

Creates a link to a file or folder

```bash
ln -s /etc/hosts hosts_link
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-s` | Creates a symbolic link (a shortcut that points to the original path) | `ln -s /etc/hosts hosts_link` |
| `-sf` | Creates a symbolic link and replaces it if it already exists | `sudo ln -sf /usr/bin/dash /usr/bin/sh` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-rm"></a>

## `rm`

Deletes files or folders

```bash
rm old.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-r` | Deletes folders and everything inside them recursively | `rm -r old_folder` |
| `-f` | Forces deletion without asking, even if the file is write-protected | `rm -f protected_file.txt` |
| `-r /tmp/$var` | Careful: if the variable is empty it becomes rm -r /tmp; quote and check it | `rm -r "/tmp/$dir"` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-file"></a>

## `file`

Analyzes a file and tells you what kind of content it has, regardless of its extension

```bash
file image.png
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-stat"></a>

## `stat`

Shows detailed info about a file or directory: permissions, size and access/modification dates

```bash
stat file.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-42"></a>

## `*`

Wildcard that matches anything, to select several files at once

```bash
ls *.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-readlink"></a>

## `readlink`

Shows where a link points

```bash
readlink /usr/bin/sh
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-f` | Follows every link to the real path; with /proc/$$/exe shows the real shell running | `readlink -f /proc/$$/exe` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-basename"></a>

## `basename`

Keeps just the file name, without the path

```bash
basename /tmp/scan.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-pushd"></a>

## `pushd`

Enters a directory and saves the previous one on a stack

```bash
pushd /root/.ssh
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-popd"></a>

## `popd`

Returns to the directory saved by pushd

```bash
popd
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-mv"></a>

## `mv`

Moves or renames files and folders

```bash
mv old.txt new.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-shred"></a>

## `shred`

Overwrites a file several times so it can't be recovered (unreliable on SSDs, journaling and CoW filesystems)

```bash
shred -u secret.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-u` | Deletes the file after overwriting it (without it, the file stays full of garbage) | `shred -u secret.txt` |
| `-n` | Number of overwrite passes (3 by default) | `shred -n 5 -u secret.txt` |
| `-z` | Adds a final pass with zeros to hide that shred was used | `shred -zu secret.txt` |
| `-v` | Shows the progress of each pass | `shred -vzu secret.txt` |
| `-f` | Changes permissions if needed so it can write to the file | `shred -fu protected.txt` |
| `/dev/sdX` | Wipes a whole disk or partition (destroys everything on it) | `sudo shred -vzn 1 /dev/sdb` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-rsync"></a>

## `rsync`

Copies or syncs folders, sending only what changed (handy for backups to another disk)

```bash
rsync -av ~/projects/ /media/usb/projects/
```

<sub>[⬆ Back to top](#commands)</sub>
