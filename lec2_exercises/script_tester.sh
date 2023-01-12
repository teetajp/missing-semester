#!/usr/bin/env bash

# need a while loop that termiantes only when the script fails aka its exit code is non-zero
# create an error/crash log where you print the standard output and error stream to
# echo that
# report the number of runs it took by incrementing a counter each run and echoing it in the end

runs=0
until [ $? -ne 0 ]
do
  runs=$((runs + 1))
  ./script_to_test.sh &> output.txt
done

echo "Found error in given script"
cat output.txt
