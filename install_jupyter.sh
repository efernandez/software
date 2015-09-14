#!/bin/bash

# Install jupyter:
# http://jupyter.readthedocs.org/en/latest/install.html
sudo pip install jupyter

# Configure server:
# http://jupyter-notebook.readthedocs.org/en/latest/public_server.html#notebook-public-server
jupyter notebook --generate-config

