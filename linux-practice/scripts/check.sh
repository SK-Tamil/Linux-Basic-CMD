#!/bin/bash

FILE="input.sh"

if [ -x "$FILE" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi
