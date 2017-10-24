#!/bin/bash
# Find large files and directories:

du -amx /|sort -t$'\t' -k1nr,1|head -100|sort -t$'\t' -k2,2

# TCP hole punching:

## With hping3:
hping3 -c 1 -S -s 22 -p 22222 "${CLIENT:?}"

## With nping:
nping -c 1 -N --tcp --flags SYN -g 22 -p 22222 "${CLIENT:?}"

## SSH through a punched hole:
ssh -oProxyCommand='nc -p 22222 %h %p' "${SERVER:?}"
