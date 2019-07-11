#! /bin/bash

INPUT_DIR="."
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

for i in $INPUT_DIR/*;
	do name=`echo $i | cut -d'.' -f1`;
		FILENAME=$(basename "$i")
		convert $i -$OUTPUT_COLOR $INPUT_COLOR "$OUTPUT_DIR/$FILENAME"
	done
