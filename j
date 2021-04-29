#!/bin/bash

if ! test -x /usr/local/bin/clojure
then
   echo Installing clojure, please wait...
   curl -s -O https://download.clojure.org/install/linux-install-1.10.2.796.sh
   bash linux-install-1.10.2.796.sh > /dev/null 2>&1
   rm -f linux-install-1.10.2.796.sh
   clojure -e '0' > /dev/null 2>&1
   echo Now clojure is installed.
   # allow easy import of clj Python function (see clj.py).
   ln -s c/clj.py
fi
exec clojure -M "$@"
