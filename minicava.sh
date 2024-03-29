#!/usr/bin/env bash

dict="s/;//g;s/0/▁/g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g;"

if [ ! -z "$1" ]; then
    bars="$1"
else
    bars=7
fi

config="
[general]
bars=$bars
[output]
method=raw
data_format=ascii
ascii_max_range=7
"

cava -p <(echo "$config") | sed -u $dict
