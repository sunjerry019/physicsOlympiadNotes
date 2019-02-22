#!/bin/bash

find .. | grep .pdf | grep -v "../Google Drive/" | grep -v "../0_Textbooks/" | grep -v "converted-to" | grep -v "../0_Administrative" | grep -v "Syllabus" | grep -v "pdf_tex" | grep -v "_archive" | xargs -L1 -I _ sh -c 'BN=$(basename "_"); ln -s "_" "$BN"'

# https://unix.stackexchange.com/a/65225

