#!/bin/bash

if [ $# -ne 1 ]; then
  echo "ERROR: $0 expects 1 argument but got $#"
  exit 1
fi

sudo /usr/local/bin/gem install $1