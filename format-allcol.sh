#!/bin/bash

PLOTDIR=$1
NAME=$2
FILES=${@:3}

function f() {
	echo data/$PLOTDIR/$NAME-$2
	./format-results.sh  $1 $FILES > data/$PLOTDIR/$NAME-$2.tsv
}
f  3 write
f  4 rewrite
f  5 read
f  6 reread
f  7 random-read
f  8 random-write
f  9 bkwd-read
f 10 record-rewrite
f 11 stride-read
f 12 fwrite
f 13 frewrite
f 14 fread
f 15 freread
