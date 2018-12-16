#! /bin/bash

INPUT_FILE="input.png"
INPUT_COLOR="transparent"
OUTPUT_FILE="output.png"
OUTPUT_COLOR="transparent"

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--input)
    INPUT_FILE="$2"
    shift # past argument
    shift # past value
    ;;
    -o|--output)
    OUTPUT_FILE="$2"
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

convert $INPUT_FILE -$OUTPUT_COLOR $INPUT_COLOR $OUTPUT_FILE
