#!/usr/bin/env bash

function outputText()
{
  local text=$1
  local -i textLength=${#text}

  local -i line="$(tput lines) / 2"
  local -i col="$(tput cols) / 2 - $textLength / 2"

  clear
  echo -en "\e[$line;${col}H$text"
}

trap "outputText 'Hello world!'" SIGWINCH

outputText 'Hello world!'
while true
do
  :
done
