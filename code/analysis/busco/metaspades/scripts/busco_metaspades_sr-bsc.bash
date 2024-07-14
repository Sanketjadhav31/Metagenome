#!/bin/bash

## Script to analyze the quality of the metagenomes
## Assembler: Metaspade
## Dataset: Short read BSC
## Uses this dataset: 
## Analyzer: Busco

mkdir data/process/metaspades/sr-bsc/busco
busco --auto-lineage -c 12 -m genome -i data/process/megahit/sr-bsc/assembly.fasta -o data/process/megahit/sr-bsc/busco
