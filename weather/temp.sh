#!/bin/bash

#www=https://weather.com/weather/today/l/50.08,14.44
#www=https://www.google.com/
www=https://demoqa.com/
#www=https://www.accuweather.com/en/cz/dejvice/125514/hourly-weather-forecast/125514
content=$(wget $www -O "html.txt")
#content=$(wget google.com -q -O -)

#echo $content
#less -FX html.txt

grep -Po '(?<=href=")[^"]*' "html.txt"
