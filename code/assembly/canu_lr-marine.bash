#!/bin/bash

## Dataset: Long-read Marine Sediment
## Uses this dataset: https://www.ncbi.nlm.nih.gov/sra/SRX22826990%5Baccn
## Assembler: Canu

mkdir -p data/process/canu/lr-marine_sediment/logs
touch data/process/canu/lr-marine_sediment/logs/log_flye_lr-marine_sediment.txt
{
.tools/assemblers/canu-2.2/bin/canu -p lr-marine_sediment -d data/process/canu/lr-marine_sediment/ genomeSize=141.1m -nanopore data/raw/lr-gut/SRR27145287/SRR27145287.fastq

} > data/process/canu/lr-marine_sediment/logs/log_canu_lr-marine_sediment.txt
