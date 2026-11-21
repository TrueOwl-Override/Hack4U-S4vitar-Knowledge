# 🔀 Pipes, Redirection & Operators

> Chain commands, decide where output and errors go, and run things in the background.

**Linux Commands** · **16** commands · **1** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`\|`](#cmd-sym-124) | Pipe: sends one command's output as the next command's input |
| [`&>/dev/null`](#cmd-dev-null) | Sends both normal output and errors to /dev/null, hiding everything |
| [`2>/dev/null`](#cmd-2-dev-null) | Sends errors (stderr) to /dev/null so they aren't shown |
| [`&&`](#cmd-sym-38-38) | Runs the next command only if the previous one succeeded |
| [`\|\|`](#cmd-sym-124-124) | Runs the next command only if the previous one failed |
| [`&`](#cmd-sym-38) | Runs the command in the background, leaving the terminal free |
| [`<`](#cmd-sym-60) | Redirects a file as the command's input |
| [`<<`](#cmd-sym-60-60) | Here document: feeds everything up to the end word as input |
| [`<<<`](#cmd-sym-60-60-60) | Here string: feeds a literal string as input |
| [`>`](#cmd-sym-62) | Redirects output to a file, overwriting its contents |
| [`\|&`](#cmd-sym-124-38) | Short form of 2>&1 \| : pipes stdout AND stderr to the next command |
| [`2>`](#cmd-2) | Redirects stderr (errors) to a file |
| [`<(command)`](#cmd-command) | Process substitution: treats a command's output as if it were a file |
| [`>(command)`](#cmd-command) | Process substitution: passes output to a command as if it were a file |
| [`>&2`](#cmd-2) | Sends the output to stderr (e.g. usage messages) |
| [`\`](#cmd-sym-92) | At the end of a line, splits a long command across several lines |

---

<a id="cmd-sym-124"></a>

## `|`

Pipe: sends one command's output as the next command's input

```bash
cat /etc/passwd | grep root
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dev-null"></a>

## `&>/dev/null`

Sends both normal output and errors to /dev/null, hiding everything

```bash
ping -c 1 8.8.8.8 &>/dev/null
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-2-dev-null"></a>

## `2>/dev/null`

Sends errors (stderr) to /dev/null so they aren't shown

```bash
find / -name "*.conf" 2>/dev/null
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-38-38"></a>

## `&&`

Runs the next command only if the previous one succeeded

```bash
mkdir test && cd test
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-124-124"></a>

## `||`

Runs the next command only if the previous one failed

```bash
ping -c 1 8.8.8.8 || echo "no connection"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-38"></a>

## `&`

Runs the command in the background, leaving the terminal free

```bash
sleep 60 &
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-60"></a>

## `<`

Redirects a file as the command's input

```bash
cat < /etc/passwd
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-60-60"></a>

## `<<`

Here document: feeds everything up to the end word as input

```bash
cat << EOF
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-60-60-60"></a>

## `<<<`

Here string: feeds a literal string as input

```bash
read var <<< "hello"
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-62"></a>

## `>`

Redirects output to a file, overwriting its contents

```bash
echo "hello" > file.txt
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `> file` | On its own, empties a file without deleting it | `> log.txt` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-124-38"></a>

## `|&`

Short form of 2>&1 | : pipes stdout AND stderr to the next command

```bash
find / -perm -4000 |& wc -l
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-2"></a>

## `2>`

Redirects stderr (errors) to a file

```bash
find /etc -name '*.conf' 2>errors.txt
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-command"></a>

## `<(command)`

Process substitution: treats a command's output as if it were a file

```bash
diff a.txt <(ss -tln)
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-command"></a>

## `>(command)`

Process substitution: passes output to a command as if it were a file

```bash
find / -name '*.conf' 2>/dev/null > >(grep security > security.txt)
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-2"></a>

## `>&2`

Sends the output to stderr (e.g. usage messages)

```bash
echo "Usage: $0 <ip>" >&2
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-sym-92"></a>

## `\`

At the end of a line, splits a long command across several lines

```bash
whoami && \\\n ls
```

<sub>[⬆ Back to top](#commands)</sub>
