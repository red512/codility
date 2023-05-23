#!/bin/bash

echo "Enter the numbers you want to sum, and enter 'f' when you're finished."

ARR=()
while true; do
    read num
    if [[ $num == "finish" ]]; then
        break
    fi
    ARR+=("$num")
done

echo "${ARR[@]}"

sum=0
for i in ${ARR[@]}; do
  let sum+=${i#-}
done

echo "Sum: $sum"

