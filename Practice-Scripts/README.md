# 🧪 Practice Scripts

My own practice scripts from the course — real Bash I wrote while learning.

| Script | What it does |
|:--|:--|
| [`host-and-port-scanner.sh`](host-and-port-scanner.sh) | Checks if a host is up and scans its ports |
| [`multihost-port-scanner.sh`](multihost-port-scanner.sh) | Scans ports across several hosts in parallel |
| [`host-and-port-validator.sh`](host-and-port-validator.sh) | Validates IPv4 hosts (regex + octets ≤ 255) and a list of ports, with colored output |
| [`target-recon-scanner.sh`](target-recon-scanner.sh) | Recon on a target by modules (`ports`, `ip`, `web`, `all`): parallel port scan via `/dev/tcp`, DNS resolution with `dig` and HTTP status code with `curl` |

> The scripts keep my original code and comments; only the file names were put in English.
