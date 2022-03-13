#! /bin/bash

INPUT_FILE="input.png"
OUTPUT_FILE="output.pdf"

inkscape -d 300 -e $INPUT_FILE $OUTPUT_FILE
