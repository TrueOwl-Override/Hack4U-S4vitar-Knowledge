# 🌐 Networking

> Network interfaces, open ports and sockets, and raw connections with netcat.

**Linux Commands** · **13** commands · **13** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`hostname`](#cmd-hostname) | Shows or changes the machine's network name |
| [`ifconfig`](#cmd-ifconfig) | Shows and configures network interfaces (the IP of each card) |
| [`iwconfig`](#cmd-iwconfig) | Like ifconfig, but for wireless (Wi-Fi) interfaces |
| [`ss`](#cmd-ss) | Shows information about active network sockets, a modern alternative to netstat |
| [`lsof`](#cmd-lsof) | Lists the files opened by running processes, including network connections |
| [`nc`](#cmd-nc) | Netcat: creates manual TCP/UDP connections to send and receive data, scan ports or open remote shells |
| [`ncat`](#cmd-ncat) | Improved netcat (from the Nmap project) with SSL/TLS encryption and authentication support |
| [`ping`](#cmd-ping) | Sends packets to a host to check if it's reachable |
| [`ip`](#cmd-ip) | Shows and manages network interfaces and their IPs |
| [`dig`](#cmd-dig) | Resolves a domain's IP (DNS lookup) |
| [`arp-scan`](#cmd-arp-scan) | Lists the devices connected to the network |
| [`ipcalc`](#cmd-ipcalc) | Works out a network's host range (already discounts network and broadcast) |
| [`ffuf`](#cmd-ffuf) | Fast web fuzzer: tries every word of a wordlist in place of FUZZ (directories, params, subdomains) |

---

<a id="cmd-hostname"></a>

## `hostname`

Shows or changes the machine's network name

```bash
hostname
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-I` | Shows the IP address(es) assigned to the machine | `hostname -I` |

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

<a id="cmd-iwconfig"></a>

## `iwconfig`

Like ifconfig, but for wireless (Wi-Fi) interfaces

```bash
iwconfig wlan0
```

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
| `-nltp` | Shows listening TCP sockets without resolving names, including the process behind each one | `sudo ss -nltp` |
| `-tln` | Shows the listening TCP ports (no name resolution) | `ss -tln` |
| `-tn` | Shows the established TCP connections | `ss -tn` |

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

<a id="cmd-ncat"></a>

## `ncat`

Improved netcat (from the Nmap project) with SSL/TLS encryption and authentication support

```bash
ncat 192.168.1.10 4444
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `--ssl` | Encrypts the connection with SSL/TLS to protect the data being sent | `ncat --ssl 192.168.1.10 443` |

<sub>[⬆ Back to top](#commands)</sub>

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

<a id="cmd-arp-scan"></a>

## `arp-scan`

Lists the devices connected to the network

```bash
sudo arp-scan -I ens33 --localnet
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-I --localnet` | -I picks the interface, --localnet scans the whole local network | `sudo arp-scan -I ens33 --localnet` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ipcalc"></a>

## `ipcalc`

Works out a network's host range (already discounts network and broadcast)

```bash
ipcalc 192.168.1.0/24
```

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-ffuf"></a>

## `ffuf`

Fast web fuzzer: tries every word of a wordlist in place of FUZZ (directories, params, subdomains)

```bash
ffuf -u http://10.10.10.5/FUZZ -w directory-list-2.3-small.txt
```

<sub>[⬆ Back to top](#commands)</sub>
