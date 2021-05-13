#!/bin/bash
# Find large files and directories:

du -amx /|sort -t$'\t' -k1nr,1|head -100|sort -t$'\t' -k2,2
