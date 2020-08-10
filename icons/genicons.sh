#!/bin/bash

set -x

ICON=mx-fluxbox.png

SIZES="8 12 16 24 32 48 64 96 128 192"

for S in $SIZES; do
   XY=${S}x${S}
   APPS=$XY/apps
   [ ! -d ./${APPS} ] && mkdir -p ${APPS}
   # keep alps tranparency
   convert -resize $XY -quality 100% $ICON $APPS/$ICON
   # remove alph to show the white background
   convert -alpha remove $APPS/$ICON $APPS/mxflux.png
done
