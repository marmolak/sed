#!/bin/bash

sed -n '
   /go/ {
        /south/ {
            s/^.*$/south_hell/; h; b again;
        }
        /west/ {
            s/^.*$/west_enterprise/; h; b again;
        }
   }
   /^$/ {
        : again;
        g;
        s/south_hell/Ses ted satanova cuba!/;
        s/west_enterprise/Ses ted Jimova cuba!/;
        s/^$/Vitej predatore! Na jihu te ceka peklo. Muzes tam jit prikazem: go south. Muzes jit take pracovat do enterprise prostredi prikazem: go west./;
        t goprint;
        T noprint;

        : goprint; P;
        : noprint
    }
'
