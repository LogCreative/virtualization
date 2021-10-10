# !/bin/bash

cd /home
curl -O https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.7.4-Linux-x64.deb
apt install ./VNC-Server-6.7.4-Linux-x64.deb
curl -O https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.21.406-Linux-x64.deb
apt install VNC-Viewer-6.21.406-Linux-x64.deb
# vnclicense -add *****-*****-*****-*****-*****
apt-get install gnome-core

vncserver