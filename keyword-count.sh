#!/bin/bash
#
# This tool is used to count and sort specific keywords (as defined in
# keyword.txt) inside all the files and directory.
#
# Created by : Aris C. Risdianto - 2020
#

INPUT="keyword.txt"

usage ()
{
  echo 'Usage : keyword-count.sh <directory>'
  exit
}

if [ "$#" -ne 1 ]
then
  usage
fi

# Delete previous output if available
if test -f result.txt; then
    rm result.txt
fi

# Count the words
while IFS= read -r line
do
  echo -e "$line \c"
  grep -Ro "$line" $1/* | wc -w
done < "$INPUT" >> result.txt

# Sort the result
sort -k2,2rn result.txt
