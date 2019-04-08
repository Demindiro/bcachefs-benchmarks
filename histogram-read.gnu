set xtics rotate out
set style data histogram
set style fill solid border

set style histogram clustered
set term png size 3840,2160
set output "histogram-read.png"

plot for [COL=2:7] 'res-999.tsv' using COL:xticlabels(1) title columnheader
