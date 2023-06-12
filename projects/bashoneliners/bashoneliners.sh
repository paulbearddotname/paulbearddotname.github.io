#!/bin/bash
# Find large files and directories:

du -amx /|sort -t$'\t' -k1nr,1|head -100|sort -t$'\t' -k2,2

# Convert TSV files to CSV:

sed 's/"/""/g;s/'$'\t''/","/g;s/^/"/;s/$/"/'
