#!/bin/bash

## Dataset: lr-ecoli
## Uses this dataset: 
## Assembler: Canu

mkdir -p data/MAG/canu/lr-ecoli

./tools/assemblers/canu-2.2/bin/canu -p lr-ecoli -d data/MAG/canu/lr-ecoli/ genomeSize=26000 corOutCoverage=10000 corMhapSensitivity=high corMinCoverage=0 -nanopore data/raw/lr-ecoli/Loman_E.coli_MAP006-1_2D_50x.fasta
