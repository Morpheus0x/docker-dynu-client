#!/bin/sh
set -e

MY_HOSTNAME=${MY_HOSTNAME:-""}
GET_IP_SERVER=${GET_IP_SERVER:-"http://ipecho.net/plain"}
MY_USER=${MY_USER:-""}
MY_PASS=${MY_PASS:-""}
WAIT_TIME=${WAIT_TIME:-"30"}

while true; do
  EXT_IP=${EXT_IP:-$(curl -s $GET_IP_SERVER)}
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Your public IP: $EXT_IP"
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Dynu status: $(curl -s 'https://api.dynu.com/nic/update?hostname='"${MY_HOSTNAME}"'&myip='"${EXT_IP}"'&username='"${MY_USER}"'&password='"${MY_PASS}"'')"
  echo
  sleep $WAIT_TIME
done
