#!/bin/sh

COLUMN=$1
FILES="${@:2}"

echo -n 'Mode '

for f in $FILES
do
	echo -n "$f "
done
echo

for i in $(seq 28 153)
do
	echo -n '"'
	awk "NR==$i" $f | awk '{$1=$1}1' | cut -f 1-2 -d ' ' | tr ' ' '/' | tr -d '\n'
	echo -n '" '
	for f in $FILES
	do
		awk "NR==$i" $f | awk '{$1=$1}1' | cut -f $COLUMN -d ' ' | tr -d '\n'
		echo -n ' '
	done
	echo
done
