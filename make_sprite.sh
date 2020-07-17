#! /bin/bash

input="./"
FRAME_COUNT="10"
WIDTH="100"
HEIGHT="100"
OUTPUT_FILE="output.png"

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -f|--frame-count)
    FRAME_COUNT="$2"
    shift # past argument
    shift # past value
    ;;
    -w|--width)
    WIDTH="$2"
    shift # past argument
    shift # past value
    ;;
    -h|--height)
    HEIGHT="$2"
    shift # past argument
    shift # past value
    ;;
    -i|--input)
    INPUT="$2"
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

montage "$INPUT/*.png" -tile $FRAME_COUNTx1 -geometry $WIDTHx$HEIGHT+0+0 $OUTPUT_FILE
