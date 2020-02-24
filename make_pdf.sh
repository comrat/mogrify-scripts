#! /bin/bash

INPUT_FILES="*.png"
OUTPUT_PDF="result.pdf"

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--input)
    INPUT_FILES="$2"
    shift # past argument
    shift # past value
    ;;
    -o|--output)
    OUTPUT_PDF="$2"
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

convert $INPUT_FILES 0003.jpg $OUTPUT_PDF

