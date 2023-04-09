# boxinit.sh
	Quickly add a new entry in your /etc/hosts.
	I got tired of doing:
	
	> echo "10.10.X.X box.htb >> /etc/hosts"
	
	so I wrote this:
	
	> ./boxinit.sh 10.10.X.X box.htb

# Install
	Copy boxinit.sh wherever you store you tools, and make it system-wide accessible by creating a symbolic link to it:

	> sudo ln -s ./boxinit.sh /usr/bin/boxinit.sh

# Usage
	> chmod +x
	> ./boxinit.sh <ip-address> <domain>

# Exemple
	> ./boxinit.sh 10.10.14.17 box.htb

# Note
**Only works on UNIX systems.
Not on Windows.**
Steps for Windows :
- **Copy** *C:\Windows\System32\Drivers\etc\hosts* in a writable folder (Desktop for example)
- **Add** your entry in this file
- **Move it again** to its original location and overwriting the current one
- **End** 

![It ain't much, but it's honest work](meme.jpg)
