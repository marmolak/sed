#!/bin/bash

sed '/\[editors\]/,/^$/ {               # select content between $section and blank line (or EOF)
        /preferred=/ {
            h                           # copy line to hold buffer
            s/=.*/=vim/                 # do substitution of value on hold buffer
        } # end of /preffered=/
        $ {                             # do on last line
            x                           # exchange hold buffer and pattern buffer - if succes we holding substitued value in hold buffer
            /^$/ {                      # check if noting happened in hold buffer (we switched buffers in previous step):
                                        # if previous substitution failed, we have
                                        # empty buffer so it matches ^$
                    s//preferred=vim/   # change blank line to our desired value
                    H                   # add line to hold buffer
            }
            x                           # exchange buffers
         } # end of $
}' ini-file.ini
