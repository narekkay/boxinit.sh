#!/bin/bash

# Bored of manually adding a new box IP to your /etc/hosts?
# Just use boxinit.sh [IP] [DOMAIN] !"
# boxinint - narekkay @0xNarek

BGreen='\033[1;32m'
BRed='\033[1;31m'
RESET='\033[0m'

octet="(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])"
ip4="^$octet\\.$octet\\.$octet\\.$octet$"

function banner() {
	echo "Usage:"
	echo "	boxinit.sh [IP] [DOMAIN]"
	echo -e "\nExample:"
	echo "	boxinit.sh 10.10.13.37 superbox.local"
}

# check if any args is empty
if [[ -z $1 || -z $2 ]]; then
	echo -e "${BRed}Please provide an IP address and a domain.${RESET}\n"
	banner
	exit 1
fi

# test ip regex filter on ip argument
if [[ $1 =~ $ip4 ]]; then
	echo "$1 $2" >> /etc/hosts
	echo -e "${BGreen}[+]${RESET} Now resolving ${BGreen}$2${RESET} to ${BGreen}$1${RESET} !"
	exit 0
else
        echo -e "${BRed}Incorrect IP address.${RESET}\n"
	banner
	exit 1
fi
