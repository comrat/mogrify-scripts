#! /bin/bash

OUTPUT_DIR="./"
FORMAT="jpg"
DENSITY=150

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
	OUTPUT_DIR="$2"
	shift # past argument
	shift # past value
	;;
	-f|--format)
	FORMAT="$2"
	shift # past argument
	shift # past value
	;;
	-d|--density)
	DENSITY="$2"
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

if [ -z ${INPUT_FILE+x} ]; then
	echo "Provide the input file using the -i flag"
	exit 2
fi

convert -density $DENSITY "$INPUT_FILE" "$OUTPUT_DIR/page.$FORMAT"
