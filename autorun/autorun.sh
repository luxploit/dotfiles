#!/bin/bash

function run {
    pgrep -u $USER -fx "$1" > /dev/null || ($1)
}

run "sc"
run "picom -b"
run "nitrogen --restore"
run "nm-applet"
run "lxpolkit"
