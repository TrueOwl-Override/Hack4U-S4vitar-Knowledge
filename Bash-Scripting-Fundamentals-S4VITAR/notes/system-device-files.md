# 🗂️ System & Device Files

> Special device files and system paths you read from or write to.

**Linux Commands** · **7** commands · **1** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`/dev/null`](#cmd-dev-null) | The black hole: anything sent here is discarded |
| [`/dev/zero`](#cmd-dev-zero) | An endless source of null bytes |
| [`/dev/urandom`](#cmd-dev-urandom) | A source of random data |
| [`/etc/`](#cmd-etc) | System folder that holds the configuration files |
| [`/tmp/`](#cmd-tmp) | Temporary folder any user can write to; it's emptied on reboot |
| [`/usr/share/seclists/`](#cmd-usr-share-seclists) | Default SecLists folder (wordlists for fuzzing and brute force) after apt install seclists |
| [`/opt/`](#cmd-opt) | Folder for optional third-party software installed by hand |

---

<a id="cmd-dev-null"></a>

## `/dev/null`

The black hole: anything sent here is discarded

```bash
command 2>/dev/null
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dev-zero"></a>

## `/dev/zero`

An endless source of null bytes

```bash
dd if=/dev/zero of=file bs=1M count=1
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dev-urandom"></a>

## `/dev/urandom`

A source of random data

```bash
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 16
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-etc"></a>

## `/etc/`

System folder that holds the configuration files

```bash
ls /etc/
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-tmp"></a>

## `/tmp/`

Temporary folder any user can write to; it's emptied on reboot

```bash
cd /tmp/
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-usr-share-seclists"></a>

## `/usr/share/seclists/`

Default SecLists folder (wordlists for fuzzing and brute force) after apt install seclists

```bash
ls /usr/share/seclists/
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `Discovery/Web-Content/directory-list-2.3-small.txt` | Common wordlist of web directories for fuzzing | `ffuf -u http://site/FUZZ -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-small.txt` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-opt"></a>

## `/opt/`

Folder for optional third-party software installed by hand

```bash
ls /opt/
```

<sub>[⬆ Back to top](#commands)</sub>
