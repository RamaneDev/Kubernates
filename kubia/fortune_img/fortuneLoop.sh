#!/bin/bash
t#!/bin/bash
trap "exit" SIGINT
# INTERVAL=$1  we remove this ligne because w'll put the value of INTERVAL in ENV_VAR
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
 echo $(date) Writing fortune to /var/htdocs/index.html
 /usr/games/fortune > /var/htdocs/index.html
 sleep $INTERVAL   # in this ligne the script wil get the value naturally wi don't need to get
                   # INTERVAL ENV_VAR explicitly
done