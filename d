#!/bin/bash

if ! test -f ditaa0_9.jar
then
   curl -s -O https://rickneff.github.io/ditaa0_9.jar
   # allow easy import of ditaa Python function (see ditaa.py).
   ln -s c/ditaa.py
   ln -s c/ditaa0_9.py
fi
exec java -jar ditaa0_9.jar "$@"