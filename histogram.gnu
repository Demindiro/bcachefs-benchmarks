set xtics rotate out
set style data histogram
set style fill solid border

set style histogram clustered
set term png size 7680,2160

plot for [COL=2:6] '/dev/stdin' using COL:xticlabels(1) title columnheader
