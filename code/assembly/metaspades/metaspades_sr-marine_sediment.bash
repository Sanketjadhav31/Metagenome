#!/bin/bash
## Dataset: Short read Marine Sediment
## Uses this dataset:
## Assembler: MetaSpades

mkdir -p data/process/metaspades/sr-marine_sediment/logs
touch data/process/metaspades/sr-marine_sediment/logs/log_metaspades_sr-marine_sediment.txt
{

	python3 tools/assemblers/SPAdes-4.0.0-Linux/bin/metaspades.py --only-assembler -t 12 -1 data/raw/sr-marine_sediment/SRR27456520/SRR27456520_1.fastq -2 data/raw/sr-marine_sediment/SRR27456520/SRR27456520_2.fastq -o data/process/metaspades/sr-marine_sediment/ > data/process/metaspades/sr-marine_sediment/logs/log_metaspades_sr-marine_sediment.txt
} > data/process/metaspades/sr-bsc/logs/metaspades_sr-bsc.txt

