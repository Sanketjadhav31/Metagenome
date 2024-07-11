#!/bin/bash

## Dataset: Long Read E. coli
## Uses this dataset: 
## Assembler: miniasm
mkdir -p data/process/miniasm/lr-ecoli/

./tools/assemblers/minimap2/minimap2 -x ava-ont data/raw/lr-ecoli/Loman_E.coli_MAP006-1_2D_50x.fasta data/raw/lr-ecoli/Loman_E.coli_MAP006-1_2D_50x.fasta > data/process/miniasm/lr-ecoli/overlap_minimap_lr-ecoli.paf
./tools/assemblers/miniasm/miniasm -f data/raw/lr-ecoli/Loman_E.coli_MAP006-1_2D_50x.fasta data/process/miniasm/lr-ecoli/overlap_minimap_lr-ecoli.paf > data/process/miniasm/lr-ecoli/assembly_minimap_lr-ecoli.gfa

python3 code/processing/gfa_to_fa.py data/process/miniasm/lr-ecoli/assembly_minimap_lr-ecoli.gfa