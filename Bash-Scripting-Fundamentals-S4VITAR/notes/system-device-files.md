# 🗂️ System & Device Files

> Special device files and system paths you read from or write to.

**Linux Commands** · **3** commands · **0** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`/dev/null`](#cmd-dev-null) | The black hole: anything sent here is discarded |
| [`/dev/zero`](#cmd-dev-zero) | An endless source of null bytes |
| [`/dev/urandom`](#cmd-dev-urandom) | A source of random data |

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
