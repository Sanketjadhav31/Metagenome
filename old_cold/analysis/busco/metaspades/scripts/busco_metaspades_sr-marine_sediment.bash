#!/bin/bash

## Script to analyze the quality of the metagenomes
## Assembler: Metaspade
## Dataset: Short read marine_sediment
## Uses this dataset: 
## Analyzer: Busco

busco --auto-lineage -c 12 -m genome -i data/MAG/megahit/sr-marine_sediment/assembly.fasta -o data/process/megahit/sr-marine_sediment/busco
