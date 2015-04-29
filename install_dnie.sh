#!/bin/bash

# http://www.ubuntu-guia.com/2010/08/dni-e-electronico-ubuntu-instalar.html

# Controller (libacr38u only needed by ACR38 based controllers):
sudo apt-get install libccid pcscd libacr38u

# Libraries:
sudo apt-get install pinentry-gtk2 pcsc-tools libpcsclite1 libpcsclite-dev libreadline6 libreadline-dev coolkey

# Use lsusb and pcsc_scan to detect it
# @todo for the sveon SCT010 it's not detected!

