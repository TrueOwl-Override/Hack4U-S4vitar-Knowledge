# 📝 Viewing & Editing Files

> Read files in the terminal, page through output, compare files and edit text.

**Linux Commands** · **6** commands · **11** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`cat`](#cmd-cat) | Prints a file's contents to the terminal |
| [`head`](#cmd-head) | Shows the first lines of a file or text (10 by default) |
| [`man`](#cmd-man) | Opens the manual of a command |
| [`tail`](#cmd-tail) | Shows the last lines of a file (10 by default), useful for logs |
| [`diff`](#cmd-diff) | Compares two files line by line and shows the differences between them |
| [`vi`](#cmd-vi) | Advanced, powerful text editor with a steeper learning curve than nano |

---

<a id="cmd-cat"></a>

## `cat`

Prints a file's contents to the terminal

```bash
cat notes.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `/etc/shells` | File listing the shells installed and available | `cat /etc/shells` |
| `/etc/passwd` | File with basic user info (UID, home, shell) | `cat /etc/passwd` |
| `/proc/net/tcp` | Virtual file with the active TCP connections (IPs, ports and state) in hexadecimal | `cat /proc/net/tcp` |
| `<< 'EOF'` | Heredoc: writes everything up to EOF into a file from the terminal | `cat > /tmp/file.sh << 'EOF'\n...\nEOF` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-head"></a>

## `head`

Shows the first lines of a file or text (10 by default)

```bash
head -n 1 file.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-n 1` | Shows only the first line of the file or text | `head -n 1 file.txt` |
| `-c` | Keeps the first N characters (bytes) | `cat /dev/urandom \| tr -dc 'a-z' \| head -c 16` |
| `-1` | Short form of head -n 1 (the first line) | `dig +short domain \| head -1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-man"></a>

## `man`

Opens the manual of a command

```bash
man bc
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-tail"></a>

## `tail`

Shows the last lines of a file (10 by default), useful for logs

```bash
tail /var/log/syslog
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-n 1` | Shows only the last line of the file or text | `tail -n 1 file.txt` |
| `-1` | Short form of tail -n 1 (the last line) | `dig +short domain \| tail -1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-diff"></a>

## `diff`

Compares two files line by line and shows the differences between them

```bash
diff file1.txt file2.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-vi"></a>

## `vi`

Advanced, powerful text editor with a steeper learning curve than nano

```bash
vi notes.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `:%s/old/new/g` | In Vim/Neovim, replaces in the whole file (% = whole file, g = all per line) | `:%s/local_port/port/g` |
| `u` | In Vim, undoes the last change | `u` |

<sub>[⬆ Back to top](#commands)</sub>
