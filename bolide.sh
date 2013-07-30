#!/bin/bash

if [ "$1" ]
then
  meteor create $1
  cd $1
  rm *
  mkdir client server public collections lib
  
  # client
  cd client
  mkdir stylesheets views lib
  touch application.js
  touch index.html
  touch index.js

  # server
  cd ../server
  touch publications.js
  mkdir lib
else
  echo "Usage: bolide [name]"
fi