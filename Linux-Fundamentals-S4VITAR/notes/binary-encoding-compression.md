# 🧬 Binary, Encoding & Compression

> Inspect binary data, convert between formats, hash files and work with archives.

**Linux Commands** · **13** commands · **14** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`strings`](#cmd-strings) | Shows the readable text strings (ASCII) inside a binary file; useful for finding hidden info |
| [`xxd`](#cmd-xxd) | Shows a file's contents in hexadecimal |
| [`ghex`](#cmd-ghex) | Hex editor with a graphical interface to view and modify a file's bytes |
| [`base64`](#cmd-base64) | Encodes text or a file to Base64, or decodes it back to its original form, depending on the flag |
| [`md5sum`](#cmd-md5sum) | Calculates the MD5 hash of a file or input, useful to check whether its content has changed |
| [`bc`](#cmd-bc) | Terminal calculator; does arithmetic and converts numbers between bases (hexadecimal, decimal) |
| [`7z`](#cmd-7z) | Compresses and extracts .7z archives |
| [`dump`](#cmd-dump) | Backs up ext2/3/4 filesystems; skips files with the chattr d attribute |
| [`extundelete`](#cmd-extundelete) | Recovers deleted files from an ext3/ext4 partition (unmount it first) |
| [`restore`](#cmd-restore) | Restores files from a backup made with dump |
| [`ext4magic`](#cmd-ext4magic) | Recovers deleted files from ext3/ext4 using the journal; more maintained than extundelete |
| [`photorec`](#cmd-photorec) | Recovers files by their signatures (JPG, PDF, ZIP...) on any filesystem, without original names |
| [`debugfs`](#cmd-debugfs) | Low-level ext2/3/4 debugger to inspect inodes and blocks by hand |

---

<a id="cmd-strings"></a>

## `strings`

Shows the readable text strings (ASCII) inside a binary file; useful for finding hidden info

```bash
strings program.bin
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-xxd"></a>

## `xxd`

Shows a file's contents in hexadecimal

```bash
xxd file.bin
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-p` | Shows plain hexadecimal output, without addresses or text alongside | `xxd -p file.bin` |
| `-s` | Skips to a specific offset in the file before showing it in hexadecimal | `xxd -s 16 file.bin` |
| `-r` | Turns a hex dump back into binary | `xxd -r data.hex output.bin` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ghex"></a>

## `ghex`

Hex editor with a graphical interface to view and modify a file's bytes

```bash
ghex file.bin
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-base64"></a>

## `base64`

Encodes text or a file to Base64, or decodes it back to its original form, depending on the flag

```bash
echo "hello" | base64
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-d` | Decodes Base64 text back to its original form | `echo "aG9sYQ==" \| base64 -d` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-md5sum"></a>

## `md5sum`

Calculates the MD5 hash of a file or input, useful to check whether its content has changed

```bash
md5sum file.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-bc"></a>

## `bc`

Terminal calculator; does arithmetic and converts numbers between bases (hexadecimal, decimal)

```bash
echo "obase=10; ibase=16; FF" | bc
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-7z"></a>

## `7z`

Compresses and extracts .7z archives

```bash
7z a backup.7z folder/
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `l` | Lists an archive's contents without extracting it | `7z l backup.7z` |
| `x` | Extracts an archive's contents keeping its folder structure | `7z x backup.7z` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dump"></a>

## `dump`

Backs up ext2/3/4 filesystems; skips files with the chattr d attribute

```bash
sudo dump -0f backup.dump /home
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-0 / -1` | Backup level: 0 is full, 1 saves only what changed since the last level 0 (up to 9) | `sudo dump -1uf home-1.dump /home` |
| `-u` | Records the backup date in /etc/dumpdates so the next level knows where to start | `sudo dump -0uf home.dump /home` |
| `-f` | File (or device) where the backup is saved | `sudo dump -0f /backups/home.dump /home` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-extundelete"></a>

## `extundelete`

Recovers deleted files from an ext3/ext4 partition (unmount it first)

```bash
sudo extundelete /dev/sda1 --restore-all
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `--restore-file` | Recovers a single file (path relative to the partition) into RECOVERED_FILES/ | `sudo extundelete /dev/sdb1 --restore-file home/mary/notes.txt` |
| `--restore-directory` | Recovers a whole folder | `sudo extundelete /dev/sdb1 --restore-directory home/mary` |
| `--restore-all` | Recovers everything it can find | `sudo extundelete /dev/sdb1 --restore-all` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-restore"></a>

## `restore`

Restores files from a backup made with dump

```bash
sudo restore -i -f home.dump
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-i` | Interactive mode: browse the backup and pick which files to extract | `sudo restore -i -f home.dump` |
| `-f` | Backup file to read from | `sudo restore -r -f home.dump` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ext4magic"></a>

## `ext4magic`

Recovers deleted files from ext3/ext4 using the journal; more maintained than extundelete

```bash
sudo ext4magic /dev/sdb1 -r -a $(date -d '-1 day' +%s)
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-photorec"></a>

## `photorec`

Recovers files by their signatures (JPG, PDF, ZIP...) on any filesystem, without original names

```bash
sudo photorec /dev/sdb1
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-debugfs"></a>

## `debugfs`

Low-level ext2/3/4 debugger to inspect inodes and blocks by hand

```bash
sudo debugfs /dev/sdb1
```

<sub>[⬆ Back to top](#commands)</sub>
