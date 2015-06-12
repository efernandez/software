#!/bin/bash

cat debians.txt | grep -v \# | xargs sudo apt-get install -y

