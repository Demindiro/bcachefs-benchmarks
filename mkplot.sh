#/bin/bash

for f in ${@:1}; do
	for t in $(echo write rewrite read reread random-read random-write bkwd-read record-rewrite stride-read fwrite frewrite fread freread); do 
		FILE=$f-$t
		echo plots/$FILE
		#gnuplot -p histogram.gnu < data/$FILE.tsv > plots/$FILE.png
		gnuplot -p histogram-avg.gnu < data/$FILE.tsv > plots/$FILE.png
	done
done
