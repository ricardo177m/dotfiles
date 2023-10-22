#!/usr/bin/env sh
CURRENT=$(busctl --user -- get-property rs.wl-gammarelay / rs.wl.gammarelay Temperature | cut -d' ' -f2)

NEWVAL=6500

if [ "$CURRENT" = 6500 ] ; then
    NEWVAL=4000
fi

busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q $NEWVAL

