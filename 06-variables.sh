#!/bin/bash

##### Special Variables #######
echo "All args passed to the script: $@"
echo "Number of args passed to the script: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of the script $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "PID of recently executed baground script: $!"
echo "All args passed to the script: $*"
echo "Exit status of previous command: $?"