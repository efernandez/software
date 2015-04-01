#!/bin/bash

sudo ./install_debians.sh

# Install QtCreator
# http://www.qt.io/download-open-source/#section-6
wget http://download.qt.io/official_releases/qtcreator/3.3/3.3.2/qt-creator-opensource-linux-x86_64-3.3.2.run
chmod +x qt-creator-opensource-linux-x86_64-3.3.2.run
sudo ./qt-creator-opensource-linux-x86_64-3.3.2.run
rm qt-creator-opensource-linux-x86_64-3.3.2.run

# Install QtCreator desktop file
sudo cp qtcreator.desktop /usr/share/applications

# Install skype
# http://www.skype.com/en/download-skype/skype-for-linux/downloading/?type=ubuntu64
# NOTE It needs several i386 packages to be installed first!
wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
rm skype-ubuntu-precise_4.3.0.37-1_i386.deb

