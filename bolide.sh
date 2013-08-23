#!/bin/bash

if [ "$1" ]
then

  if [ "$2" = "coffee" ]
  then
    lang="coffee"
  else
    lang="js"
  fi

  meteor create $1
  cd $1
  rm *
  mkdir client server public collections lib
  
  # client
  cd client
  mkdir stylesheets views lib
  touch application.$lang
  touch template.html
  cd lib
  touch helpers.$lang

  # server
  cd ../../server
  touch publications.$lang
  mkdir lib
else
  echo "Usage: bolide [name]"
fi
