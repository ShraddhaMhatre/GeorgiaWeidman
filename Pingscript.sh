#!/bin/bash
# Ping Sweep Program
if [ "$1" == "" ]
then
echo "Usage: ./pingscript.sh [network]"
echo "Usage: ./pingscript.sh 10.0.0"
else
for x in `seq 1 254`; do
# sed 's/.$//' removes the final character
ping -c 1 $1.$x | grep "64 bytes" | cut -d" " -f4 | sed 's/.$//'
done
fi
