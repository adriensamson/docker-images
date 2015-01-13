#!/usr/bin/env sh

onexit () {
    killall5
    rm -rf /var/lib/mongodb/journal/prealloc.*
}

trap "onexit" 0 15

chown mongodb:mongodb /var/lib/mongodb
/etc/init.d/mongodb start
bash
