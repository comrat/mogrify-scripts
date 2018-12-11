#! /bin/bash

if [[ $# < 1 ]]; then
	echo "Provide at least one parameter: output file"
	exit 2
fi

INPUT_FILE=$1
OUTPUT_FILE=$2
INPUT_COLOR=$3
OUTPUT_COLOR=$4

convert $INPUT_FILE -$OUTPUT_COLOR $INPUT_COLOR $OUTPUT_FILE
