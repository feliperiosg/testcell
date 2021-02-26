#!/bin/bash

www=https://weather.com/weather/today/l/50.08,14.44

# www=google.com
# www=https://www.accuweather.com/en/cz/dejvice/125514/hourly-weather-forecast/125514
content=$(wget $www -O "html.txt")
#content=$(wget google.com -q -O -)
#echo $content
less -FX html.txt
