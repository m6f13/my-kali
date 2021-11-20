# my-kali
Kali custom

'''
docker pull kalilinux/kali-rolling
'''

connect to container
'''
docker run --tty --interactive kalilinux/kali-rolling /bin/bash
'''

'''
apt update
apt dist-upgrade
apt autoremove
apt clean
apt -y install kali-linux-headless
'''

tools
'''
apt install kali-tools-top10 man-db exploitdb

'''