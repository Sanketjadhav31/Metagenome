#!/bin/bash

## Script to analyze the quality of the metagenomes
## Assembler: idba
## Dataset: Short Read Marine_sediment
## Uses this dataset: 
## Analyzer: Busco

busco --auto-lineage -c 12 -m genome -i data/MAG/idba/sr-marine_sediment/assembly.fasta -o data/process/idba/sr-marine_sediment/busco

