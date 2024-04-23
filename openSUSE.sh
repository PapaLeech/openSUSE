#!/bin/bash

zypper update

zypper install -t pattern kde kde_plasma

zypper addrepo https://download.opensuse.org/repositories/X11:RemoteDesktop/openSUSE_Tumbleweed/X11:RemoteDesktop.repo

zypper refresh

sudo zypper ref

sudo zypper update

zypper install firewalld

zypper systemctl enable firewalld

zypper systemctl start firewalld

zypper systemctl status firewalld

sudo firewall-cmd --add-port=3389/tcp --permanent

zypper install xrdp

firewall-cmd --reload

zypper addrepo http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome

zypper refresh

zypper install google-chrome-stable

reboot
