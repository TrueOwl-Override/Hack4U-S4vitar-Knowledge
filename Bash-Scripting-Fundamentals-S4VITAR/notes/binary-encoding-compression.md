# 🧬 Binary, Encoding & Compression

> Inspect binary data, convert between formats, hash files and work with archives.

**Linux Commands** · **6** commands · **5** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`bc`](#cmd-bc) | Terminal calculator; does arithmetic and converts numbers between bases (hexadecimal, decimal) |
| [`strings`](#cmd-strings) | Shows the readable text strings (ASCII) inside a binary file; useful for finding hidden info |
| [`dd`](#cmd-dd) | Copies and converts data block by block (create files, images, wipe) |
| [`hexedit`](#cmd-hexedit) | Opens a file in a hex editor to view and change its bytes |
| [`xxd`](#cmd-xxd) | Shows a file's contents in hexadecimal |
| [`md5sum`](#cmd-md5sum) | Calculates the MD5 hash of a file or input, useful to check whether its content has changed |

---

<a id="cmd-bc"></a>

## `bc`

Terminal calculator; does arithmetic and converts numbers between bases (hexadecimal, decimal)

```bash
echo "obase=10; ibase=16; FF" | bc
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `scale=2` | Sets how many decimals bc uses | `echo "scale=2; 10/3" \| bc` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-strings"></a>

## `strings`

Shows the readable text strings (ASCII) inside a binary file; useful for finding hidden info

```bash
strings program.bin
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dd"></a>

## `dd`

Copies and converts data block by block (create files, images, wipe)

```bash
dd if=/dev/zero of=file.txt bs=1M count=1
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `if= of=` | Input file (if) and output file (of) | `dd if=/dev/zero of=file.txt` |
| `bs= count=` | Block size (bs) and number of blocks (count) | `dd if=/dev/zero of=file.txt bs=1M count=1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-hexedit"></a>

## `hexedit`

Opens a file in a hex editor to view and change its bytes

```bash
hexedit file.txt
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
| `-l` | Limits the output to N bytes | `xxd -p -l 32 /dev/urandom` |
| `-p` | Shows plain hexadecimal output, without addresses or text alongside | `xxd -p file.bin` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-md5sum"></a>

## `md5sum`

Calculates the MD5 hash of a file or input, useful to check whether its content has changed

```bash
md5sum file.txt
```

<sub>[⬆ Back to top](#commands)</sub>
