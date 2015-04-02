#!/bin/bash

# http://www.maartenbaert.be/simplescreenrecorder/#download
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt-get install simplescreenrecorder

# Record 32-bit OpenGL applications on a 64-bit system:
sudo apt-get install simplescreenrecorder-lib:i386

