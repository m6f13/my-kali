# Custom kali

### building custom image
````shell
docker build -t kali-custom .
````
docker run basic
````shell
docker run --name kali_bash --rm -i -t kali-custom
````
docker run with mount
````shell
docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql kali-custom
````

### tools
knockpy: scan subdomains
```shell
knockpy domain.com
```
dirb: find files and directories
````shell
dirb domain.com [wordlist] [options]
````

---

### pulling official kali
```shell
docker pull kalilinux/kali-rolling
```

start docker and connect to container
```shell
docker run --tty --interactive kalilinux/kali-rolling /bin/bash
```

```shell
apt update
apt dist-upgrade
apt autoremove
apt clean
apt -y install kali-linux-headless
```

tools
````shell
apt install kali-tools-top10 man-db exploitdb
````
