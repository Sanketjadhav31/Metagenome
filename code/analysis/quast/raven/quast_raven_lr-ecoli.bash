#!/bin/bash

## Script to analyze the quality of the metagenomes
## Assembler: Flye
## Dataset: Long read E.coli
## Uses this dataset: 
## Analyzer: METAQUAST

mkdir data/process/flye/lr-/asm_sr-bsc_SRR341725.megahit_asm/quast
python3 tools/analysis/quast/metaquast.py -c 12 -o data/process/megahit/sr-diabetes/asm_sr-bsc_SRR341725.megahit_asm/quast/ -r data/reference/