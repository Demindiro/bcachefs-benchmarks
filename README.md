# Bunch 'o random data about me benchmarking bcachefs

# DO NOT TRUST THESE BENCHMARKS

I thought I had to use the `-I` flag in `iozone` (`O_DIRECT`) but it should've been
`-o` (`O_SYNC`). FML


## Requirements

- Bash
- GNUPlot


## How the data was generated

I will commit the script later, but basically
1. Format a filesystem
2. Mount the filesystem
3. `iozone -a -I` in the mount directory


## How to generate plots with the scripts

1. `./format-allcol.sh <directory to write to> <name of the plots> <all files you want to include ...>`
2. `./mkplot.sh <directory that was written to>/<name of the plots>`

### Examples

```
./format-allcol.sh 6-HDD-1-NVMe write-caching 6-HDD-1-NVMe/write-caching-?
./mkplot.sh 6-HDD-1-NVMe/write-caching
```

```
./format-allcol.sh 6-HDD-1-NVMe base-vs-lz4-compression 6-HDD-1-NVMe/base-5 6-HDD-1-NVMe/lz4-compression-5
./mkplot.sh 6-HDD-1-NVMe/base-vs-lz4-compression
```


## Important notes

When testing caching, make sure the SSD doesn't throttle (+/- 50°C causes _heavy_ throttling)
