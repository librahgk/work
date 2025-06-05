#!/bin/bash


set -e
trap 'rm $TMPFILE' ERR

TMPFILE=$(mktemp)
false
