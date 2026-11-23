#!/usr/bin/env bash

# End Colours
endColour="\e[0m"

# Basic Colours
redColour="\e[1;38;2;221;46;68m"
greenColour="\e[1;92m"
yellowColour="\e[1;93m"
blueColour="\e[1;94m"
purpleColour="\e[1;95m"
turquoiseColour="\e[1;96m"
grayColour="\e[1;97m"

# Extra Colours
whiteColour="\e[1;38;2;255;255;255m"
orangeColour="\e[1;38;5;208m"
pinkColour="\e[1;38;5;198m"
limeColour="\e[1;38;5;118m"
goldColour="\e[1;38;5;220m"
skyColour="\e[1;38;5;45m"
violetColour="\e[1;38;5;129m"
coralColour="\e[1;38;5;203m"

# Trap Ctrl_C Function
ctrl_c(){
  echo -e "\n" ; tput cnorm; exit 1;
}

# Trap Ctrl_C
trap ctrl_c SIGINT

# Less than one argument prompt
if [[ $# -lt 1 ]]; then
  echo -e "\n${orangeColour}[-] Arguments are needed for this script${endColour}\n"
  echo -e "${goldColour}[+]${endColour} ${whiteColour}Usage: $0${endColour} ${goldColour}--target${endColour} ${pinkColour}\"www.google.com\"${endColour} ${goldColour}--module${endColour} ${pinkColour}all${endColour} ${whiteColour}--verbose${endColour}\n"
  echo -e "${whiteColour}[--- Modules ---]${endColour}"
  echo -e "${whiteColour}|${endColour}    ${skyColour}(ports)${endColour}    ${whiteColour}|${endColour}"
  echo -e "${whiteColour}|${endColour}    ${skyColour}(ip)${endColour}       ${whiteColour}|${endColour}"
  echo -e "${whiteColour}|${endColour}    ${skyColour}(web)${endColour}      ${whiteColour}|${endColour}"
  echo -e "${whiteColour}|${endColour}    ${skyColour}(all)${endColour}      ${whiteColour}|${endColour}"
  echo -e "${whiteColour}[---------------]${endColour}\n"
  exit 1
fi

# Global Variables
target=""
module=""
verbose=false

# Regex
valid_IP_Regex='^[0-9].*$'

#Case Scenarios
while [[ $# -gt 0 ]]; do
  case "$1" in
    -t|--target) target="$2"; shift;;
    -m|--module) 
        case "$2" in
          ports|ip|web|all) module="$2";;
          *) echo -e "\n${redColour}[!] No Module Found${endColour}\n" >&2; exit 1;;
        esac
      ;;
    -v|--verbose) verbose=true;;
    -*) echo -e "\n${redColour}[!] Invalid Argument Detected${endColour}\n" >&2; exit 1;;
  esac
  shift
done

# ./script.sh --target <www.google.com> --module [ports/ip/web/all] --verbose
echo -e "\n${whiteColour}=======================${endColour}"
echo -e "||      ${greenColour}Summary${endColour}      ||"
echo -e "${whiteColour}=======================${endColour}"
[[ -z "$target" ]] && { echo -e "${redColour}[!] Target: --target needed${endColour}\n" >&2; exit 1; }
[[ -z "$module" ]] && { echo -e "${redColour}[!] Module: --module needed${endColour}\n" >&2; exit 1; }

# Response Summary
echo -e "${whiteColour}Target:${endColour} ${purpleColour}$target${endColour}"
echo -e "${whiteColour}Modules:${endColour} ${purpleColour}$module${endColour}"
echo -e "${whiteColour}Verbose:${endColour} ${purpleColour}$verbose${endColour}"
echo

tput civis
echo -e "${whiteColour}( Press Enter to Continue )${endColour}" && read answer
tput cnorm

for mode in $module; do
  tput civis
  case $mode in
    ports|all)
        tput cnorm
        echo -ne "${skyColour}[+] Indicate Ports or Press Enter: ${endColour}" && read -r indicatePorts && tput civis
        echo -e "\n${goldColour}[--- PORT SCAN ---]${endColour}\n"
        allPorts="${indicatePorts:-21,22,53,443,80,8080}"
        IFS=',' read -ra ports <<< $allPorts 
        for port in ${ports[@]}; do
          (timeout 1 bash -c "echo > /dev/tcp/$target/$port" 2>/dev/null && {
              echo -e "${whiteColour}Port:${endColour} ${goldColour}$port${endColour} ${whiteColour}-${endColour} ${greenColour}OPEN${endColour}"
              } || {
                $verbose && echo -e "${whiteColour}Port:${endColour} ${goldColour}$port${endColour} ${whiteColour}-${endColour} ${redColour}CLOSED${endColour}" >&2
              }
            ) &
        done; wait
        echo
      ;;&
    ip|all)
      echo -e "${goldColour}[--- IP SCAN ---]${endColour}\n"
        dig +short "$target" 2>/dev/null | sort | while read -r ip; do
          if [[ "$ip" =~ $valid_IP_Regex ]]; then
            echo -e "${whiteColour}$target${endColour} ${goldColour}->${endColour} ${whiteColour}$ip${endColour}"
            $verbose && echo -e "${greenColour}VALID Request Detected${endColour}"
          else
            $verbose && echo -e "${whiteColour}$target${endColour} ${goldColour}->${endColour} ${whiteColour}$ip${endColour}"
            $verbose && echo -e "${redColour}INVALID Request Detected${endColour}"
          fi
      done
    echo
      ;;&
    web|all)
        echo -e "${goldColour}[--- WEB SCAN ---]${endColour}\n"
        code=$(curl -s -o /dev/null -w "%{http_code}" --connect-timeout 3 "http://$target")
        echo -e "${whiteColour}Status Code${endColour} ${goldColour}-${endColour} ${orangeColour}$code${endColour}\n"
      ;;
  esac
done
tput cnorm

echo -e "${goldColour}[--- SUMMARY ---]${endColour}\n"
echo -e "${goldColour}[+]${endColour} ${whiteColour}SCAN COMPLETE in${endColour} ${goldColour}$SECONDS${endColour} ${whiteColour}seconds${endColour}\n"
