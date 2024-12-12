# sample the narrowPeak from macs3
cat $BRICKYARD/results_analysis/scatlas/macs3_pk/cluster-0_peaks.narrowPeak | grep "\bchr1\b" > $SCRATCH/uniwig-test/sample.narrowPeak

# run uniwig
time gtars uniwig -f sample.narrowPeak \
    -t narrowPeak \
    -m 5 \
    -s 1 \
    -c $SCRATCH/hg38.chrom.sizes \
    -l out/chr1 \
    -y wig \
    -o \
    -z 2

# convert wiggles to bigWigs
# inside out/ dir
$SCRATCH/kent/wigToBigWig chr1_core.wig $SCRATCH/hg38.chrom.sizes chr1_core.bw
$SCRATCH/kent/wigToBigWig chr1_start.wig $SCRATCH/hg38.chrom.sizes chr1_start.bw
$SCRATCH/kent/wigToBigWig chr1_end.wig $SCRATCH/hg38.chrom.sizes chr1_end.bw


