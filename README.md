# boxinit.sh
	Quickly add a new entry in your /etc/hosts.
	I got tired of doing:
	
	> echo "10.10.X.X box.htb >> /etc/hosts"
	
	so I wrote this:
	
	> ./boxinit.sh 10.10.X.X box.htb

# Usage
	> chmod +x boxinit.sh
	> sudo ./boxinit.sh <ip-address> <domain>

# Exemple
	> ./boxinit.sh 10.10.14.17 box.htb

![It ain't much, but it's honest work](meme.jpg)
