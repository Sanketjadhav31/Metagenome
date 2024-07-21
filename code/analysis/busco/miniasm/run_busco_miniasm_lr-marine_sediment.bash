#!/bin/bash
## Analyzer: Busco
## Assembler: Raven
## Dataset: lr-marine_sediment


conda run -n ana_busco bash code/analysis/busco/miniasm/scripts/busco_miniasm_lr-marine_sediment.bash | tee logs/analysis/log_busco_miniasm_lr-marine_sediment.log
