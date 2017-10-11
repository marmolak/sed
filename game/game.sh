#!/bin/bash

sed -n '
   /^$/ {
        : again;
        g;
        s/south_hell/Ses ted satanova cuba!/; t goprint
        T nogoprint;
        s/^$/Vitej predatore! Na jihu te ceka peklo. Muzes tam jit prikazem: go south./;
        : goprint;
        P;
        : nogoprint;
    }
    /go/ {
        /south/ {
            s/.*/south_hell/; h; b again;
        }
    }
'
