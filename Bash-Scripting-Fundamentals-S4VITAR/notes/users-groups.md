# 👤 Users & Groups

> Check who you are, switch users, and manage accounts, passwords and groups.

**Linux Commands** · **2** commands · **3** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`sudo`](#cmd-sudo) | Runs a single command with administrator privileges without switching users |
| [`id`](#cmd-id) | Shows user info: UID, GID and the groups they belong to |

---

<a id="cmd-sudo"></a>

## `sudo`

Runs a single command with administrator privileges without switching users

```bash
sudo apt update
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `pacman -S` | Arch Linux: installs a package | `sudo pacman -S dash` |
| `su` | Switches to the root session permanently until you exit | `sudo su` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-id"></a>

## `id`

Shows user info: UID, GID and the groups they belong to

```bash
id root
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-u` | Shows your UID (0 = root) | `[ "$(id -u)" -eq 0 ]` |

<sub>[⬆ Back to top](#commands)</sub>
