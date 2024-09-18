#!/bin/bash

set -e

for file in *.md; do
  # Extract the year using basic regular expressions
  year=$(grep -o '^date: [0-9]\{4\}' "$file" | cut -d' ' -f2)

  mkdir -p "$year"
  mv "$file" "$year"
done
