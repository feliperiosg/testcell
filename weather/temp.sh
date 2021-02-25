#!/bin/bash

# https://weather.com/weather/today/l/50.08,14.44

www=google.com
content=$(wget $www -O "html.txt")
#content=$(wget google.com -q -O -)
#echo $content
less -FX html.txt
