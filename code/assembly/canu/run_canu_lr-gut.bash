#!/bin/bash
## Assembler: Canu
## Dataset: Long read Gut

time {
	conda run -n asm_canu bash code/assembly/canu/scripts/canu_lr-gut.bash | tee logs/assembly/log_assemble_canu_lr-gut.log

} | tee -a logs/assembly/log_assemble_canu_lr-gut.log
