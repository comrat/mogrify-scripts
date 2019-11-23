#! /bin/bash

POSITIONAL=()
WIDTH=720
HEIGHT=480
while [[ $# -gt 0 ]]
do
    key="$1"
    OUTPUT_DIR="output"

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
        convert $FILENAME -resize "$WIDTHxHEIGHT" "$OUTPUT_DIR/$FILENAME"
    done
