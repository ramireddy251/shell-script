#!/bin/bash

set -e # when it finds error it through the error to system in ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR
echo "Hellow World"
echo "I am learning shell"
echoo "printing error here"
echo "no error in this"
