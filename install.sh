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

