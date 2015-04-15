#!/bin/bash

# http://www.linuxproblem.org/art_9.html

if [[ $# -lt 3 ]]
then
    echo "Usage: $0 <server> <user> <key>"
    exit 1
else
    SERVER=$1
    USER=$2
    KEY=$3
fi

# Generate key:
ssh-keygen -t rsa -N -f $KEY

# Put key on the server:
ssh $USER@$SERVER mkdir -p .ssh
cat .ssh/$KEY | ssh $USER@$SERVER 'cat >> .ssh/authorized_keys'

# Update ssh config file:
echo "
Host $SERVER
    HostName $SERVER
    User $USER
    IdentityFile ~/.ssh/$KEY
" >> ~/.ssh/config

