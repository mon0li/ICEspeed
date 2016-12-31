#!/bin/bash
speed=$(echo "$(curl -s "https://www.ombord.info/api/jsonp/position/" | grep "speed" | cut -d'"' -f 4)*3.6" | bc -l)
d=$(date)
echo "$d $speed km/h"
