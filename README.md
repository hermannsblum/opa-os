# opa-os
Lubuntu based os simplified for grandparents. Features:

* Browser
* E-Mail
* VNC server
* Direct chat with a support person

# steps

## Install lubuntu
I used 16.04 LTS as stability is a primary concern.

## Software Decisions

* Chrome as Browser as it is both simple and for unexperienced users probably the safest choice
* Geary for email as it features a rather simple UI
* realvnc as vnc server as it was the easiest option to deal with dynamic IPs, but any other combination of DynIP service and standard vnc server would probably also work
* pidgin is the chat client I use for the support chat, there should be a plugin for any IM service you like, I use it with telegram

## Software Installation
Some stuff you can install from standard repos:

    sudo apt-get geary, pidgin
  
For the telegram-plugin and chrome, you can add sources:

    sudo add-apt-repository ppa:nilarimogard/webupd8
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install telegram-purple, google-chrome-stable

Now realvnc is a bit hard if you use the free version, as you have to open a UI to login:

- Download and unpack the latest archive on a 64-bit Debian-compatible system:  
  `curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/debian/64-bit/`  
  `tar xvf VNC.tar.gz`
 
- Now install the vnc-server from the directory (names may vary)
  

