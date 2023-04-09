# boxinit.sh
Quickly add a new entry in your /etc/hosts.
I got tired of doing:

> echo "10.10.X.X box.htb >> /etc/hosts"

so I turned it like this:
	
> ./boxinit.sh 10.10.X.X box.htb

# Install
Copy boxinit.sh wherever you store you tools, and make it system-wide accessible by creating a symbolic link to it (set absolute path for the source!) :

	chmod +x boxinit.sh
	sudo ln -s /home/user/toolz/boxinit.sh /usr/bin/boxinit.sh

# Usage
	sudo boxinit.sh <ip> <domain>
	
# Exemple
	sudo boxinit.sh 10.10.14.17 box.htb

# Demo
![boxinit.sh Demo](boxinit_demo.gif)

## Commands

	git clone https://github.com/narekkay/boxinit.sh.git
	cd boxinit.sh
	chmod +x boxinit.sh
	sudo ln -s /home/user/toolz/boxinit.sh/boxinit.sh /usr/bin/boxinit.sh
	sudo boxinit.sh 10.10.14.17 box.htb


# Note
**Only works on UNIX systems.
Not on Windows.**
Steps for Windows :
- **Copy** *C:\Windows\System32\Drivers\etc\hosts* in a writable folder (Desktop for example)
- **Add** your entry in this file
- **Move it again** to its original location and overwriting the current one **(needs admin rights)**
- **Done** 

![It ain't much, but it's honest work](meme.jpg)
