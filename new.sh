#!/bin/bash

# A simple shell script

# Print a message
echo "Hello, World!"

# Assign a variable
name="User"

# Print the variable
echo "Welcome, $name!"

# Perform a simple calculation
num1=5
num2=10
sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is $sum."

# List files in the current directory
echo "Files in the current directory:"
ls

# Check if a file exists
file="example.sh"
if [ -f "$file" ]; then
    echo "$file exists."
else
    echo "$file does not exist."
fi

# Loop example
echo "Counting to 5:"
for i in {1..5}; do
    echo $i
done

# End of script
echo "Script execution completed!"

