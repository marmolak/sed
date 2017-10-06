#!/bin/bash

cat xxx.txt | sed '/^x/ {N; s/\(^x.*\nx.*\)/dupla/; }'
