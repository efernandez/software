#!/bin/bash

# http://ascend4.org/Previewing_Solidworks_files_from_Linux

# Add mime type
mkdir -p $HOME/.local/share/mime/packages
cp x-solidworks.xml $HOME/.local/share/mime/packages

# Check mime type
#mimetype example.sldprt

# Add thumbnailer
sudo cp solidworks-thumbnailer /usr/local/bin

# Associate thumbnailer with mime type
mkdir -p $HOME/.local/share/thumbnailers
cp solidworks.thumbnailer $HOME/.local/share/thumbnailers

# Restart nautilus
nautilus -q

# Viewer
sudo cp solidworks-viewer /usr/local/bin
cp solidworks.desktop $HOME/.local/share/applications

# Update desktop database
update-desktop-database $HOME/.local/share/applications

# Restart nautilus
nautilus -q


