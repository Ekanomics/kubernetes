#!/bin/bash
trap "exit" SIGINT
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune > /var/htdocs/index.html
  sleep $INTERVAL
done

# $INTERVAL = Run time variable

# If environment is Development, $INTERVAL=5 sec
# If env id prod, $INTERVAL=10 sec

# $DB_HOST
# $DB_USER
# $DB_PASS

