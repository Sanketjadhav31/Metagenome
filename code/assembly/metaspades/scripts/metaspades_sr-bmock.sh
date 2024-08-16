#!/bin/env bash
benchmark_script="code/benchmarking/benchmark.bash"
path_metaspades="code/assembly/metaspades/run_metaspades.sh"
raw_dir="data/process/sr-bmock/trimmed/"
MAG_output="data/MAG/sr-bmock/metaspades/"
path_log="data/logs/sr-bmock/metaspades/"
dataset="sr-bmock"
task="metaspades"

mkdir -p $(dirname "$MAG_output")
mkdir -p ${path_log}
log_file="${path_log}/log_asm_${task}_${dataset}.log"

# Construct the command to be executed
command="$path_metaspades $raw_path $MAG_output $log_file"

# Execute the benchmark script with the constructed command
bash $benchmark_script "$command" $dataset $task
