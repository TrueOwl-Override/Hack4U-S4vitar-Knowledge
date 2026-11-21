# 🔑 SSH & Remote Access

> Connect to remote machines and manage SSH keys.

**Linux Commands** · **1** commands · **1** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`ssh-keygen`](#cmd-ssh-keygen) | Generates an SSH key pair (public and private) to log in without a password |

---

<a id="cmd-ssh-keygen"></a>

## `ssh-keygen`

Generates an SSH key pair (public and private) to log in without a password

```bash
ssh-keygen -t ed25519
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-f` | Sets the path/name of the key files | `ssh-keygen -f ~/.ssh/my_key` |

<sub>[⬆ Back to top](#commands)</sub>
