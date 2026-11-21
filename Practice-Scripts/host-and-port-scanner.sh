#!/usr/bin/env bash

target=${1:-scanme.nmap.org}
ports="22, 80, 443, 53, 21"

IFS=',' read -ra common_ports <<< $ports

ipTarget="$(dig +short $target | head -n 1)"

echo "==================================="
echo " Resolver para la IP: $ipTarget"
echo "==================================="

ping -c 1 -W 1 $target &>/dev/null

if [ $? -eq 0 ]; then
	estado=Activo
else 
	estado=Inactivo
fi

echo -e "\n$target ($ipTarget): $estado\n"

for port in ${common_ports[@]}; do
	timeout 1 bash -c "echo > /dev/tcp/$ipTarget/$port" 2>/dev/null && echo -e "[+] Puerto $port - Abierto"
done

echo -e "\n[+] Session iniciada por $SECONDS segunods\n"
