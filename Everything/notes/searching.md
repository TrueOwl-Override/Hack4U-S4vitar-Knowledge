# 🔍 Searching

> Find files anywhere on the system and locate where commands live.

**Linux Commands** · **6** commands · **33** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`find`](#cmd-find) | Searches for files and folders by criteria (name, type, permissions, date, etc.) |
| [`grep`](#cmd-grep) | Searches and filters lines of text that match a pattern |
| [`which`](#cmd-which) | Shows where a command or program is installed |
| [`command`](#cmd-command) | With -v, shows the path of a command, similar to which |
| [`xargs`](#cmd-xargs) | Takes a command's output and uses it as the arguments of another command |
| [`locate`](#cmd-locate) | Finds files by name using a prebuilt database; fast (refresh it with updatedb) |

---

<a id="cmd-find"></a>

## `find`

Searches for files and folders by criteria (name, type, permissions, date, etc.)

```bash
find /home -name "*.txt"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-name` | Searches for files by exact name or with wildcards | `find -name '*xampl*.sh'` |
| `-type` | Filters by type: file (f) or directory (d) | `find /home -type f` |
| `-perm` | Filters by the file's specific permissions | `find / -perm -4000 2>/dev/null` |
| `-group` | Filters by owning group | `find /home -group developers` |
| `-user` | Filters by owning user | `find /home -user john` |
| `-writable` | Shows only files you have write permission on | `find /etc -writable 2>/dev/null` |
| `-executable` | Shows only files you have execute permission on | `find /usr/bin -executable -type f` |
| `-readable` | Shows only files you have read permission on | `find /var -readable 2>/dev/null` |
| `.` | Lists every file and folder in the current directory, including subdirectories | `find .` |
| `-size` | Filters the search by file size | `find -size 1033c` |
| `-perm -o+w` | Finds files that others can write to | `find / -type f -name "*.sh" -user root -perm -o+w 2>/dev/null` |
| `-perm -2000` | Finds files with the SGID permission | `find / -perm -2000 2>/dev/null` |
| `-exec ... {} \;` | Runs a command on each file found ({} is the file) | `find folder/ -type f -exec shred -u {} \;` |

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
| `-n` | Shows the line number of each match | `grep -n "root" /etc/passwd` |
| `-i` | Ignores uppercase and lowercase when looking for matches | `grep -i "error" log.txt` |
| `-r "\w"` | Recursively finds lines with at least one alphanumeric character to locate content in files in any folder | `grep -r "\w" /home/user/` |
| `-vE "bashrc\\|profile"` | Shows the lines that do NOT match "bashrc" or "profile"; -v inverts the match and -E enables extended regex (\\| means "or") | `ls -a \| grep -vE "bashrc\|profile"` |
| `-A 5` | Shows the match and the 5 lines that come after it (After) | `grep -A 5 "root" /etc/passwd` |
| `-B 5` | Shows the match and the 5 lines that come before it (Before) | `grep -B 5 "root" /etc/passwd` |
| `-C 5` | Shows the match with 5 lines of context before and after it (Context) | `grep -C 5 "root" /etc/passwd` |
| `-oP` | -o shows only the matching part and -P enables Perl regex (\K drops what came before, (?=...) checks what comes after); this one extracts what's between brackets | `grep -oP '\[\K.*?(?=\])' output.txt` |
| `-v` | Excludes the lines that match | `cat /etc/passwd \| grep -v "nologin"` |
| `-E` | Extended regex: lets you search several words separated by \| | `cat /etc/passwd \| grep -vE "nologin\|false"` |
| `-vE` | Excludes lines matching several patterns separated by \| ([ is escaped with \) | `grep -vE "local\|\["` |
| `^pattern$` | ^ anchors the start of the line and $ the end; together they match exactly | `grep "^test$" rockyou.txt` |
| `-oE` | Shows only the match, with extended regex (good for extracting emails) | `grep -oE '[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}' file.txt` |
| `-q` | Quiet: shows nothing, only sets the exit code | `grep -q "root" /etc/passwd && echo found` |
| `-qE` | Quiet + extended regex; good to validate formats like an IP | `echo "$ip" \| grep -qE '^[0-9]{1,3}(\.[0-9]{1,3}){3}$'` |
| `-a` | Treats binary data (like a whole disk) as text; good for finding deleted text | `sudo grep -a -C 50 "a phrase" /dev/sdb1 > /media/usb/rescue.txt` |
| `-l` | Shows only the names of the files that match | `grep -l "phrase" recup_dir*/*.txt` |

<sub>[⬆ Back to top](#commands)</sub>

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

<a id="cmd-command"></a>

## `command`

With -v, shows the path of a command, similar to which

```bash
command -v python3
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-v` | Shows the path of a command, similar to which | `command -v python3` |

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

---

<a id="cmd-locate"></a>

## `locate`

Finds files by name using a prebuilt database; fast (refresh it with updatedb)

```bash
locate seclists
```

<sub>[⬆ Back to top](#commands)</sub>
