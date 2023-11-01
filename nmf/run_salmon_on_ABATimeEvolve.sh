#!/bin/bash

for fn in SRR34180{01..28};
do
    samp=`basename ${fn}`
    echo "Processing sample ${samp}"
    salmon quant -i athal_index -l A \
	   -r ${samp}.fastq.gz \
	   -p 8 --validateMapping --gcBias -o quants/${samp}_quant
    done
