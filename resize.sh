#! /bin/bash

POSITIONAL=()
WIDTH=100
HEIGHT=100
while [[ $# -gt 0 ]]
do
    key="$1"
    OUTPUT_FILE="output.png"

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

CROP_ARG=$WIDTH"x"$HEIGHT"+0+0"
echo $CROP_ARG
convert $INPUT_FILE -resize "$WIDTHx$HEIGHT^" -gravity center -crop $CROP_ARG +repage $OUTPUT_FILE
