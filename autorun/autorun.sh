#!/bin/bash

function run {
    pgrep -u $USER -fx "$1" > /dev/null || ($1)
}

run "lxpolkit"
run "picom -b"
run "setxkbmap de"
run "xsetroot -cursor_name left_ptr"
run "xrdb -merge /home/raine/.Xresources"
run "urxvtd"
run "nitrogen --restore"
run "nm-applet"
