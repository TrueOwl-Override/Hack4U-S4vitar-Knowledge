# 🔐 Permissions & Attributes

> Control who can read, write and run files, plus special attributes and capabilities.

**Linux Commands** · **3** commands · **7** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`chmod`](#cmd-chmod) | Changes the permissions of a file or folder; + adds and - removes a permission |
| [`getcap`](#cmd-getcap) | Shows the capabilities assigned to a file |
| [`lsattr`](#cmd-lsattr) | Shows a file's special attributes (beyond the normal permissions) |

---

<a id="cmd-chmod"></a>

## `chmod`

Changes the permissions of a file or folder; + adds and - removes a permission

```bash
chmod 755 script.sh
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `+x` | Gives execute permission | `chmod +x example.sh` |
| `u-x` | Removes execute from the owner (u owner, g group, o others) | `chmod u-x script.sh` |
| `-x` | Removes execute permission from everyone | `chmod -x script.sh` |
| `o-rx` | Removes read and execute from others | `chmod o-rx script.sh` |
| `755` | Octal notation: r=4, w=2, x=1, added up per block (owner, group, others); 755 means rwxr-xr-x and 777 means full permissions for everyone | `chmod 755 script.sh` |
| `700` | Octal rwx------: only the owner can read, write and run it | `chmod 700 script.sh` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-getcap"></a>

## `getcap`

Shows the capabilities assigned to a file

```bash
getcap /usr/bin/ping
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-r` | Searches for and shows capabilities recursively through subfolders | `getcap -r / 2>/dev/null` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-lsattr"></a>

## `lsattr`

Shows a file's special attributes (beyond the normal permissions)

```bash
lsattr file.txt
```

<sub>[⬆ Back to top](#commands)</sub>
