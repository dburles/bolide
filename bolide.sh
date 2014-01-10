#!/bin/bash

if [ "$1" ]; then
  if [ ! -d "$1" ]; then
    if [ "$2" = "coffee" ]; then
      lang="coffee"
    else
      lang="js"
    fi

    meteor create $1
    cd $1
    rm *
    mkdir client server public collections lib

    touch lib/router.$lang

    # client
    mkdir client/stylesheets client/views
    touch client/application.$lang
    touch client/layout.html
    touch client/layout.js

    # server
    touch server/publications.$lang
  else
    echo "$1 Directory already exists"
  fi
else
  echo "Usage: bolide [name]"
fi
