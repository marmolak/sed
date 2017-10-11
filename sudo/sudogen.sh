#!/bin/bash
sed -n '
    /^$/ ! { H; }
    $ { x;
        s/^\n/Cmnd_Alias '"$1"' = /
        s/\n/, /g;
        P
    }' commands
echo "portal-deploy ALL=(ALL) NOPASSWD: $1"
