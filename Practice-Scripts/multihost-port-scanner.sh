#!/usr/bin/env bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

targets=${1:-scanme.nmap.org}
puertos=${2:-21,22,53,80,443,445,8080}

IFS=',' read -ra hosts <<< "$targets"
IFS=',' read -ra ports <<< "$puertos"

active=0; inactive=0

echo
tput civis
for host in ${hosts[@]}; do
	ping -c 1 -W 1 $host &>/dev/null && {
	
	echo -e "${yellowColour}$host - Active${endColour}"
	((active++))
	echo -e "\n${purpleColour}Ports:${endColour}\n"

	for port in ${ports[@]}; do
		(timeout 1 bash -c "echo > /dev/tcp/$host/$port") 2>/dev/null && \
			echo -e "${greenColour}$port -- Active${endColour}" || \
			echo -e "${blueColour}$port -- Inactive${endColour}"
	done
	echo

	} || {
	echo -e "${redColour}$host - Inactive${endColour}"
	((inactive++))
	}
done
tput cnorm

echo -e "\nSummary:\n"
echo "===================="
echo -e "Active: $active | Inactive: $inactive\n"
