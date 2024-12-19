#!/bin/bash

# Define the folder and file names
folder_name="my_folder"
file1_name="file1.txt"
file2_name="file2.txt"

# Create the folder
mkdir -p "$folder_name"

# Create file1 and add data
echo "This is the content of file1." > "$folder_name/$file1_name"

# Create file2 and add data
echo "This is the content of file2." > "$folder_name/$file2_name"

echo "Folder and files have been created successfully!"
