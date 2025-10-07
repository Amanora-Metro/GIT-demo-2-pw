#!/bin/bash

add_nubers() {

	result=$(($1 + $2))
	 
	echo $result

}

sum=$(add_numbers 10 15)

echo "the sum is: $sum"



