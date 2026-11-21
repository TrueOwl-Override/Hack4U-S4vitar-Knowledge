#!/usr/bin/env bash

# Básicos
greenColour="\e[0;32m\033[1m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Brillantes (más intensos)
lightRedColour="\e[0;91m\033[1m"
lightGreenColour="\e[0;92m\033[1m"
lightYellowColour="\e[0;93m\033[1m"
lightBlueColour="\e[0;94m\033[1m"
lightPurpleColour="\e[0;95m\033[1m"
lightCyanColour="\e[0;96m\033[1m"
whiteColour="\e[0;97m\033[1m"

# Extra (256 colores)
orangeColour="\e[38;5;208m\033[1m"
pinkColour="\e[38;5;205m\033[1m"
hotPinkColour="\e[38;5;199m\033[1m"
magentaColour="\e[38;5;201m\033[1m"
violetColour="\e[38;5;129m\033[1m"
limeColour="\e[38;5;118m\033[1m"
goldColour="\e[38;5;220m\033[1m"
brownColour="\e[38;5;130m\033[1m"
skyBlueColour="\e[38;5;117m\033[1m"
tealColour="\e[38;5;30m\033[1m"
salmonColour="\e[38;5;209m\033[1m"
mintColour="\e[38;5;121m\033[1m"
darkGrayColour="\e[38;5;240m\033[1m"

endColour="\033[0m\e[0m"

targets=${1:-127.0.0.1}
puertos=${2:-443,8080,80}

IFS=',' read -ra ports <<< "$puertos"
IFS=',' read -ra hosts <<< "$targets"

hosts_regex='^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$'

for host in "${hosts[@]}"; do
	echo -e "${goldColour}\n=============================================${endColour}"
	echo -e "\n${blueColour}[+]${endColour} ${whiteColour}Validando Hosts...${endColour}"
	if [[ "$host" =~ $hosts_regex ]]; then
		IFS='.' read -r o1 o2 o3 o4 <<< "$host"
		if (( o1 <= 255 && o2 <= 255 && o3 <= 255 && o4 <= 255 )); then
			echo -e "\n\t${orangeColour}$host${endColour} ${whiteColour}-${endColour} ${limeColour}Valido${endColour}" && \
				echo -e "\n${hotPinkColour}[+]${endColour} ${whiteColour}Validando Puertos...${endColour}" && {
				for port in "${ports[@]}"; do
					if [[ "$port" == @(443|8080|80|21) ]]; then
						echo -e "\n\t${orangeColour}$port${endColour} ${whiteColour}-${endColour} ${limeColour}Valido${endColour}"

					else
						echo -e "${redColour}$port - Invalido${endColour}"
					fi
				done
				}
		else
			echo -e "${redColour}$host - Invalido${endColour}"
		fi
	else
		echo -e "${redColour}$host - Invalido${endColour}"
	fi
done
echo -e "\n${goldColour}=============================================${endColour}"
