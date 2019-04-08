#!/bin/sh

echo -n 'Mode ' > res-999.tsv

for f in results-*
do
	echo -n "$f " >> res-999.tsv
done
echo >> res-999.tsv

for i in $(seq 28 153)
do
	awk "NR==$i" $f | awk '{$1=$1}1' | cut -f 1-2 -d ' ' | tr ' ' '-' | tr -d '\n' >> res-999.tsv
	echo -n ' ' >> res-999.tsv
	j=3
	for f in results-*
	do
		awk "NR==$i" $f | awk '{$1=$1}1' | cut -f $j -d ' ' | tr -d '\n' >> res-999.tsv
		echo -n ' ' >> res-999.tsv
		((j++))
	done
	echo >> res-999.tsv
done
