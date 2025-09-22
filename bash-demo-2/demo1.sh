#!/bin/bash
# simple while loop to print numbers from 1 to 5

i=1

while [ $i -le 5 ]
do
	echo "Number: $:1"

	((i++))

done
