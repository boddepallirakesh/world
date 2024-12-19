#!/bin/bash

# This is a comment
echo "Hello, world!"  # This prints a message

# Variables
name="John"
echo "Hello, $name"

# If-else statement
if [ $name == "John" ]; then
  echo "The name is John"
else
  echo "The name is not John"
fi

# Loop (for loop example)
for i in {1..5}
do
  echo "This is iteration number $i"
done

# Creating a directory and changing to it
mkdir my_directory
cd my_directory
echo "You are now in $(pwd)"

# Create a simple file and write to it
echo "This is a simple file" > myfile.txt
cat myfile.txt

# End of script
echo "Script execution completed!"
