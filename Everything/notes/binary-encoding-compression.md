# 🧬 Binary, Encoding & Compression

> Inspect binary data, convert between formats, hash files and work with archives.

**Linux Commands** · **9** commands · **10** parameters  ·  [⬅ Back to index](../README.md)

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
| [`dd`](#cmd-dd) | Copies and converts data block by block (create files, images, wipe) |
| [`hexedit`](#cmd-hexedit) | Opens a file in a hex editor to view and change its bytes |

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
| `-l` | Limits the output to N bytes | `xxd -p -l 32 /dev/urandom` |

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

| Parameter | What it does | Example |
|:--|:--|:--|
| `scale=2` | Sets how many decimals bc uses | `echo "scale=2; 10/3" \| bc` |

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
