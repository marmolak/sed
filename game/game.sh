#!/bin/bash

sed -n '
   /go/ {
        /south/ {
            s/.*/south_hell/; h; b again;
        }
        /west/ {
            s/.*/west_enterprise/; h; b again;
        }
   }
   /^$/ {
        : again;
        g;
        s/south_hell/Ses ted satanova cuba!/; t goprint
        s/west_enterprise/Ses ted Jimova cuba!/; t goprint
        s/^$/Vitej predatore! Na jihu te ceka peklo. Muzes tam jit prikazem: go south.
             Muzes jit take pracovat do enterprise prostredi prikazem: go west./;
        : goprint;
        P;
    }
'
