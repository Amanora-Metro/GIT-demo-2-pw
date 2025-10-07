#!/bin/bash

#Simple While loop to print numbers from 1 to 5

# Simple While loop to print numbers from 1 to 5

i=2

while [ $i -le  100 ]

do
  echo "Even Number: $i"
 i=$(( i - 2 ))  # increment by 2

done



