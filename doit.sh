#!/bin/bash

export WGET_CMD=`which wget`
export UNZIP_CMD=`which unzip`
URL="http://www.opensecurityarchitecture.org/downloads/13_05_osa_icons_svg.zip"

echo "JUST DO IT!! (waiting for enter keystroke)"
read


$WGET_CMD -O icons.zip $URL
ret_code=$?
if [[ $ret_code -eq 127 ]]; then
    echo "wget is not installed"
    exit 1; 
elif [[ $ret_code -eq 4 ]]; then
    echo "location unavailable"
    exit 1;
fi
$UNZIP_CMD icons.zip

mkdir svg

find -name '*.svg' -exec cp {} svg/ \;
find -name '* *' -print0 | xargs -0 rm

make

echo "All done"
echo "Copy .output/shapes.sheet to ~/.dia/sheets/"
echo "Copy .output/shapes/* to ~/.dia/shapes/"
echo
