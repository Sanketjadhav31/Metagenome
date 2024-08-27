#!/bin/env bash
## Dataset: Long-read Marine Sediment
## Assembler: Flye 
benchmark_script="code/benchmarking/benchmark.bash"
path_flye="code/assembly/flye/run_metaflye.sh"
raw_path="data/lr-ms/raw/lr-ms_raw.fastq"
path_output="data/lr-ms/flye/"
log_dir="data/lr-ms/logs/"
dataset="lr-ms"
task="flye"


mkdir -p $path_output
mkdir -p ${log_dir}
log_file="${log_dir}/log_asm_${task}_${dataset}.log"

# Construct the command to be executed
command="$path_flye $raw_path $path_output $log_file"

# Execute the benchmark script with the constructed command
bash $benchmark_script "$command" $dataset $task

