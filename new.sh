#!/bin/bash
#!/bin/bash

# A simple shell script

# Print a welcome message
echo "Welcome to the shell script example!"

# Assign a variable
NAME="User"

# Print the variable
echo "Hello, $NAME!"

# Check if a file exists
FILE="sample.txt"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist. Creating it now..."
    touch $FILE
fi

# List all files in the current directory
echo "Listing all files in the current directory:"
ls -l

# Simple loop example
for i in {1..5}; do
    echo "Count: $i"
done

# End of the script
echo "Script execution completed!"

