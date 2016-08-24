#!/bin/sh
icon=$HOME/.i3/icon-lock.png
tmpbg=/tmp/screenshot.png

(( $# )) && { icon=$1; }

scrot $tmpbg
gm convert $tmpbg -scale 10% -scale 1000% $tmpbg
gm composite $icon $tmpbg -gravity center $tmpbg
i3lock -u -i $tmpbg 2>/dev/null
