#!/bin/bash

mkdir -p ~/.irssi/scripts/autorun
cd ~/.irssi/scripts
cp -R ~/autodl-irssi-community/* ./
cp autodl-irssi.pl autorun/
mkdir -p ~/.autodl
touch ~/.autodl/autodl.cfg

tmux new-session -s autodl-$HOSTNAME -d irssi
tail -f /dev/null
