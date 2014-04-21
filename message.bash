#!/bin/bash

TERMS=`who | grep $1 | awk '{print $2}'`
echo -e "Which connection do you want to communicate through (pts/#)?\n$TERMS"
read NUM
echo "You are now communicating with $1 over pts/$NUM. Type and they will see it."
write $1 pts/$NUM
