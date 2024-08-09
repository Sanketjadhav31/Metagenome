#!/bin/bash
benchmark_script="code/benchmarking/benchmark.bash"
path_megahit="code/analysis/assembly-stats/run_assembly-stats.sh"
path_assembly="data/MAG/megahit/sr-ms/final.contigs.fa"
path_log="data/logs/sr-ms/megahit/"
dataset="sr-ms"
task="assembly-stats"

mkdir -p ${path_log}
log_file="${path_log}/log_as_${task}_${dataset}.log"

touch "${log_file}"

# Construct the command to be executed
command="$path_megahit $path_assembly $log_file"

# Execute the benchmark script with the constructed command
"$command"

