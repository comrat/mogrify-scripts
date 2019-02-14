#! /bin/bash

INPUT_FORMAT="png"
OUTPUT_FORMAT="jpg"

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--input)
    INPUT_FORMAT="$2"
    shift # past argument
    shift # past value
    ;;
    -o|--output)
    OUTPUT_FORMAT="$2"
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

mogrify -format $OUTPUT_FORMAT *.$INPUT_FORMAT
