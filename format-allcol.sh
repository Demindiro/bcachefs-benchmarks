#!/bin/bash

PLOTDIR=$1
NAME=$2
FILES=${@:3}

./format-results.sh  3 $FILES > data/$PLOTDIR/$NAME-write.tsv
./format-results.sh  4 $FILES > data/$PLOTDIR/$NAME-rewrite.tsv
./format-results.sh  5 $FILES > data/$PLOTDIR/$NAME-read.tsv
./format-results.sh  6 $FILES > data/$PLOTDIR/$NAME-reread.tsv
./format-results.sh  7 $FILES > data/$PLOTDIR/$NAME-random-read.tsv
./format-results.sh  8 $FILES > data/$PLOTDIR/$NAME-random-write.tsv
./format-results.sh  9 $FILES > data/$PLOTDIR/$NAME-bkwd-read.tsv
./format-results.sh 10 $FILES > data/$PLOTDIR/$NAME-record-rewrite.tsv
./format-results.sh 11 $FILES > data/$PLOTDIR/$NAME-stride-read.tsv
./format-results.sh 12 $FILES > data/$PLOTDIR/$NAME-fwrite.tsv
./format-results.sh 13 $FILES > data/$PLOTDIR/$NAME-frewrite.tsv
./format-results.sh 14 $FILES > data/$PLOTDIR/$NAME-fread.tsv
./format-results.sh 15 $FILES > data/$PLOTDIR/$NAME-freread.tsv
