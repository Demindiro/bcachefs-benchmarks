set xtics rotate out
set style data histogram
set style fill solid border

set style histogram clustered
set term png size 7680,2160

# Assume 5x the same thing tested
plot for [COL=0:3] '/dev/stdin' using ((column(COL*5+2) + column(COL*5+3) + column(COL*5+4) + column(COL*5+5) + column(COL*5+6))/5):xticlabel(1) title columnheader(COL*5+2)

