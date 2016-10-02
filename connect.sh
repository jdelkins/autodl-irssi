#!/bin/bash

su - user -c 'script -c "tmux attach -t autodl-'$HOSTNAME'" /dev/null'
