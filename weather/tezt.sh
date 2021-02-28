#!/bin/bash

url="http://mon.ruter.no/SisMonitor/Refresh?stopid=3010370&computerid=acba4167-b79f-4f8f-98a6-55340b1cddb3&isOnLeftSide=true&blocks=&rows=6&test=&stopPoint="

curl "$url" | \
  tidy -asxml -n -c -b -q --show-warnings no | \
  xmlstarlet sel -N h=http://www.w3.org/1999/xhtml \
    -t -m '//h:tr[h:td]' \
    -v ./h:td[1] -o $'\t' \
    -v ./h:td[2] -o $'\t' \
    -v ./h:td[4] -o $'\t' \
    -v ./h:td[5] -n | \
  column -s $'\t' -t
