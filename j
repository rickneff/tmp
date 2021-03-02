#!/bin/bash

if ! test -x /usr/local/bin/clojure
then
   echo Must install clojure, please wait...
   curl -O https://download.clojure.org/install/linux-install-1.10.2.796.sh > /dev/null 2>&1
   bash linux-install-1.10.2.796.sh > /dev/null 2>&1
   clojure -e '0' > /dev/null 2>&1
   echo Now clojure is installed.
fi
exec clojure -M "$@"