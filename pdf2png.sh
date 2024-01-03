#!/bin/bash

if [[ $# < 1 ]]; then
	echo "Provide at least one parameter: input file"
	exit 2
fi

INPUT_FILE=$1
OUTPUT_FILE="output.png"

if [[ $# > 1 ]]; then
	OUTPUT_FILE=$2
fi

convert -density 300 $INPUT_FILE $OUTPUT_FILE

