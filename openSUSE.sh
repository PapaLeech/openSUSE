#!/bin/bash

apt update

zypper install -t pattern kde kde_plasma xrdp

adduser xrdp ssl-cert

ufw allow 3389/tcp

systemctl restart xrdp

usermod -a -G ssl-cert xrdp

systemctl restart xrdp

zypper addrepo http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome

zypper refresh

zypper install google-chrome-stable

reboot