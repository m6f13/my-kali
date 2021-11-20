# Kali Linux latest with useful tools by tsumarios
FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive
# Update
RUN apt -y update && apt -y dist-upgrade && apt -y autoremove && apt clean

# Install Kali Linux "Top 10" metapackage and a few useful tools
RUN apt -y install vim \
    kali-tools-top10 \
    net-tools \
    whois  \
    exploitdb \
    man-db \
    nikto \
    wpscan \
    uniscan \
    nodejs \
    npm \
    python3-pip \
    tor \
    proxychains

# Install some useful hardware packages
RUN apt -y install pciutils usbutils

# Install additional tools
RUN apt -y install knockpy \
    dirb

ENTRYPOINT ["/bin/bash"]