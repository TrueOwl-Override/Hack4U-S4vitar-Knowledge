# 🌐 Networking

> Network interfaces, open ports and sockets, and raw connections with netcat.

**Linux Commands** · **8** commands · **10** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`ping`](#cmd-ping) | Sends packets to a host to check if it's reachable |
| [`hostname`](#cmd-hostname) | Shows or changes the machine's network name |
| [`ip`](#cmd-ip) | Shows and manages network interfaces and their IPs |
| [`dig`](#cmd-dig) | Resolves a domain's IP (DNS lookup) |
| [`ifconfig`](#cmd-ifconfig) | Shows and configures network interfaces (the IP of each card) |
| [`nc`](#cmd-nc) | Netcat: creates manual TCP/UDP connections to send and receive data, scan ports or open remote shells |
| [`lsof`](#cmd-lsof) | Lists the files opened by running processes, including network connections |
| [`ss`](#cmd-ss) | Shows information about active network sockets, a modern alternative to netstat |

---

<a id="cmd-ping"></a>

## `ping`

Sends packets to a host to check if it's reachable

```bash
ping -c 1 192.168.100.1
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-c` | Number of packets to send | `ping -c 1 192.168.100.1` |
| `-W` | Maximum seconds to wait for a reply | `ping -c 1 -W 1 192.168.100.1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-hostname"></a>

## `hostname`

Shows or changes the machine's network name

```bash
hostname
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ip"></a>

## `ip`

Shows and manages network interfaces and their IPs

```bash
ip a
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `a` | Lists the interfaces with their IP addresses | `ip a \| grep inet \| head -n 1 \| awk '{print $2}'` |
| `-4 addr show` | Shows the IPv4 of an interface; pair it with grep -oP to pull just the IP | `ip -4 addr show eth0 \| grep -oP '(?<=inet\s)\d+(\.\d+){3}'` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-dig"></a>

## `dig`

Resolves a domain's IP (DNS lookup)

```bash
dig +short scanme.nmap.org
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `+short` | Shows only the resolved IP | `dig +short scanme.nmap.org` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ifconfig"></a>

## `ifconfig`

Shows and configures network interfaces (the IP of each card)

```bash
ifconfig eth0
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-nc"></a>

## `nc`

Netcat: creates manual TCP/UDP connections to send and receive data, scan ports or open remote shells

```bash
nc 192.168.1.10 80
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-nlvp` | Leaves a listener on a port (n no DNS, l listen, v verbose, p port) | `nc -nlvp 443` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-lsof"></a>

## `lsof`

Lists the files opened by running processes, including network connections

```bash
lsof /var/log/syslog
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-i:` | Filters the output to show only connections related to the given port | `sudo lsof -i:80` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ss"></a>

## `ss`

Shows information about active network sockets, a modern alternative to netstat

```bash
ss
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-tln` | Shows the listening TCP ports (no name resolution) | `ss -tln` |
| `-tn` | Shows the established TCP connections | `ss -tn` |
| `-nltp` | Shows listening TCP sockets without resolving names, including the process behind each one | `sudo ss -nltp` |

<sub>[⬆ Back to top](#commands)</sub>
