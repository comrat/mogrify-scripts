#! /bin/bash

if [[ $# < 1 ]]; then
	echo "Provide at least one parameter: output file"
	exit 2
fi

OUTPUT_FILE=$1

montage *.png -tile 10x1 -geometry 100x100+0+0 $OUTPUT_FILE
