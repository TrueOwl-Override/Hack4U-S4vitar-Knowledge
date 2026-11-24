# 📁 Navigation & Files

> Move around the filesystem and create, copy, delete and inspect files and folders.

**Linux Commands** · **12** commands · **7** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`file`](#cmd-file) | Analyzes a file and tells you what kind of content it has, regardless of its extension |
| [`ls`](#cmd-ls) | Lists the files and folders in the current directory |
| [`ln`](#cmd-ln) | Creates a link to a file or folder |
| [`readlink`](#cmd-readlink) | Shows where a link points |
| [`touch`](#cmd-touch) | Creates an empty file, or updates its modification date if it already exists |
| [`rm`](#cmd-rm) | Deletes files or folders |
| [`mkdir`](#cmd-mkdir) | Creates a new folder |
| [`basename`](#cmd-basename) | Keeps just the file name, without the path |
| [`pushd`](#cmd-pushd) | Enters a directory and saves the previous one on a stack |
| [`popd`](#cmd-popd) | Returns to the directory saved by pushd |
| [`cp`](#cmd-cp) | Copies files or folders from one place to another |
| [`*`](#cmd-sym-42) | Wildcard that matches anything, to select several files at once |

---

<a id="cmd-file"></a>

## `file`

Analyzes a file and tells you what kind of content it has, regardless of its extension

```bash
file image.png
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
| `-l /usr/bin/sh` | On a link, shows where it points (sh → dash or bash) | `ls -l /usr/bin/sh` |
| `-l` | Detailed listing (permissions, owner, size, date) | `ls -l /etc` |

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
| `-sf` | Creates a symbolic link and replaces it if it already exists | `sudo ln -sf /usr/bin/dash /usr/bin/sh` |
| `-s` | Creates a symbolic link (a shortcut that points to the original path) | `ln -s /etc/hosts hosts_link` |

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

<a id="cmd-touch"></a>

## `touch`

Creates an empty file, or updates its modification date if it already exists

```bash
touch new.txt
```

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
| `-r /tmp/$var` | Careful: if the variable is empty it becomes rm -r /tmp; quote and check it | `rm -r "/tmp/$dir"` |

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

<a id="cmd-cp"></a>

## `cp`

Copies files or folders from one place to another

```bash
cp file.txt copy.txt
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
