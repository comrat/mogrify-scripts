#! /bin/bash

INPUT_COLOR="transparent"
OUTPUT_DIR="./output"
OUTPUT_COLOR="transparent"

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--input)
    INPUT_DIR="$2"
    shift # past argument
    shift # past value
    ;;
    -o|--output)
    OUTPUT_DIR="$2"
    shift # past argument
    shift # past value
    ;;
    -f|--from-color)
    INPUT_COLOR="$2"
    shift # past argument
    shift # past value
    ;;
    -t|--to-color)
    OUTPUT_COLOR="$2"
    shift # past argument
    shift # past value
    ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

if [ -z ${INPUT_DIR+x} ]; then
	echo "Provide the input directory using the -i flag"
	exit 2
fi

if [[ ! -e $OUTPUT_DIR ]]; then
	mkdir $OUTPUT_DIR
elif [[ ! -d $OUTPUT_DIR ]]; then
	echo "$OUTPUT_DIR already exists but is not a directory" 1>&2
fi

for i in $INPUT_DIR/*;
	do name=`echo $i | cut -d'.' -f1`;
		FILENAME=$(basename "$i")
		convert "$i" -$OUTPUT_COLOR $INPUT_COLOR "$OUTPUT_DIR/$FILENAME"
	done
