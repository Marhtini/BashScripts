#!/bin/bash
# Proper Use: ./urlcheck.sh /filename/goes/here
# Curl against a list of URLS. Follows Redirects and outputs HTTP responses.

file=$1

if [ ! -f $1 ]; then
  echo "File $1 does not exist or input invalid. Exiting..."
  echo "Proper Use: ./urlcheck.sh /filename/goes/here"
  exit 1
fi

if [ -f $1 ]; then
  for ip in $(cat $file); do
    echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
    host $ip
    curl -I -L -s $ip
  done
fi
