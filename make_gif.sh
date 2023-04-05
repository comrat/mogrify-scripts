#! /bin/bash

INPUT_DIR="."
FORMAT="jpg"
OUTPUT_FILE="output.gif"
TIME=30

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
    -f|--format)
    FORMAT="$2"
    shift # past argument
    shift # past value
    ;;
    -t|--time)
    TIME="$2"
    shift # past argument
    shift # past value
    ;;
    -o|--output)
    OUTPUT_FILE="$2"
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

convert -delay $TIME $INPUT_DIR/*.$FORMAT $OUTPUT_FILE
