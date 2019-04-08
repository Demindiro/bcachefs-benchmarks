#!/bin/bash

PLOTDIR=$1
NAME=$2
FILES=${@:3}

./format-allcol.sh $PLOTDIR $NAME $FILES
./mkplot.sh $PLOTDIR/$NAME
