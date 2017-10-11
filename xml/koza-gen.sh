#!/bin/bash
fp=0
for p in {0..6}; do
    fp=$((fp + 1))
    sed '
        s/koza-1/koza-'$fp'/g
            /<graphics/,/<\/graphics>/ {
            s/\(.*\)port=\x27\([0-9]\+\)\x27\(.*\)$/echo "\1 port=\x27"$((\2 + '$p'))"\x27 \3"/e
        }
        /<source mode/,/\/>/ {
            s/\(.*\)service=\x27\([0-9]\+\)\x27\(.*\)$/echo "\1 service=\x27$((\2 + '$p'))\x27 \3"/e
        }
' koza-temp.xml > koza-$fp.xml
done
