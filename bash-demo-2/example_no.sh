#!/bin/bash
#Read the number from user 
#!/bin/bash

echo "Enter a number:"
read number

# Check if number is positive, negative, or zero
if [ "$number" -gt 0 ]; then
    echo "Number is positive."
elif [ "$number" -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
fi

