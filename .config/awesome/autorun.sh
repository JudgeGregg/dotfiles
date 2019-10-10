#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run("compton -b")
run("autocutsel -selection PRIMARY -fork")
run("autocutsel -fork")
run("setxkbmap us -option caps:escape -option compose:ralt")
run("xss-lock -- slock")
run("xautolock -time 1 -locker sleeper")
