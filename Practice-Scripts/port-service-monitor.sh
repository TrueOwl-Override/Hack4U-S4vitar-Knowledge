#!/usr/bin/env bash

services="8483:RANDOM1 9090:RANDOM2 9784:RANDOM3"
target=127.0.0.1
max_alertas=3

declare -A caidas

while true; do
  echo "-----------------------------------------------------"
  for entry in $services; do
    IFS=: read -r port service <<< $entry
    if timeout 1 bash -c "echo > /dev/tcp/$target/$port" 2>/dev/null; then
      echo "El servicio $service esta activo en el puerto $port"
      caidas[$port]=0
      continue
    fi
    count=${caidas[$port]:-0}
    ((count++))
    caidas[$port]=$count
    if (( count >= max_alertas )); then
      echo "El puerto $port ($service) esta caido (3 Checks Hechos)"
    else
      echo "El puerto $port ($service) esta DOWN - Intento $count/$max_alertas"
    fi
  done
  sleep 3
done
