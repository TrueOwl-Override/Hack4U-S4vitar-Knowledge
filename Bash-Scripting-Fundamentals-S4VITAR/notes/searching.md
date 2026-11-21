# 🔍 Searching

> Find files anywhere on the system and locate where commands live.

**Linux Commands** · **4** commands · **17** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`which`](#cmd-which) | Shows where a command or program is installed |
| [`grep`](#cmd-grep) | Searches and filters lines of text that match a pattern |
| [`find`](#cmd-find) | Searches for files and folders by criteria (name, type, permissions, date, etc.) |
| [`xargs`](#cmd-xargs) | Takes a command's output and uses it as the arguments of another command |

---

<a id="cmd-which"></a>

## `which`

Shows where a command or program is installed

```bash
which python3
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `/usr/bin/bash /bin/bash /usr/bin/zsh /bin/zsh` | Typical paths where the shells live | `which bash` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-grep"></a>

## `grep`

Searches and filters lines of text that match a pattern

```bash
grep "error" log.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-v` | Excludes the lines that match | `cat /etc/passwd \| grep -v "nologin"` |
| `-E` | Extended regex: lets you search several words separated by \| | `cat /etc/passwd \| grep -vE "nologin\|false"` |
| `-vE` | Excludes lines matching several patterns separated by \| ([ is escaped with \) | `grep -vE "local\|\["` |
| `^pattern$` | ^ anchors the start of the line and $ the end; together they match exactly | `grep "^test$" rockyou.txt` |
| `-oE` | Shows only the match, with extended regex (good for extracting emails) | `grep -oE '[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}' file.txt` |
| `-q` | Quiet: shows nothing, only sets the exit code | `grep -q "root" /etc/passwd && echo found` |
| `-qE` | Quiet + extended regex; good to validate formats like an IP | `echo "$ip" \| grep -qE '^[0-9]{1,3}(\.[0-9]{1,3}){3}$'` |
| `-oP` | -o shows only the matching part and -P enables Perl regex (\K drops what came before, (?=...) checks what comes after); this one extracts what's between brackets | `grep -oP '\[\K.*?(?=\])' output.txt` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-find"></a>

## `find`

Searches for files and folders by criteria (name, type, permissions, date, etc.)

```bash
find /home -name "*.txt"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-perm` | Filters by the file's specific permissions | `find / -perm -4000 2>/dev/null` |
| `-type` | Filters by type: file (f) or directory (d) | `find /home -type f` |
| `-perm -o+w` | Finds files that others can write to | `find / -type f -name "*.sh" -user root -perm -o+w 2>/dev/null` |
| `-perm -2000` | Finds files with the SGID permission | `find / -perm -2000 2>/dev/null` |
| `-name` | Searches for files by exact name or with wildcards | `find -name '*xampl*.sh'` |
| `-user` | Filters by owning user | `find /home -user john` |
| `-writable` | Shows only files you have write permission on | `find /etc -writable 2>/dev/null` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-xargs"></a>

## `xargs`

Takes a command's output and uses it as the arguments of another command

```bash
find . -name "*.log" | xargs ls -l
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `(join lines)` | With no command, joins all the lines into a single one | `cat ips.txt \| xargs` |

<sub>[⬆ Back to top](#commands)</sub>
