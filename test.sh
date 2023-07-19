#!/bin/bash
testarray=(a b c d)
for i in ${!testarray[@]}; do
  echo "element $i is ${testarray[$i]}"
done