#!/bin/bash

#!/bin/bash

file="mydata.txt"

echo "Waiting for $file to be created..."

until [ -f "$file" ]
do
  sleep 1
done

echo "$file found! Proceeding..."
