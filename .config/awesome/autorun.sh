#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    #echo $@
    $@&
  fi
}

function run_arg_array {
  if ! pgrep -f "${arg_array[0]}"
  then
    #echo "${arg_array[@]}"
    "${arg_array[@]}"&
  fi
}

run picom -b
run autocutsel -selection PRIMARY -fork
run autocutsel -fork
run setxkbmap us -option caps:escape -option compose:ralt
run xss-lock -- slock
#Bash dark magic because quotes
arg_array=(xautolock -time 10 -locker 'xset dpms force off')
run_arg_array
