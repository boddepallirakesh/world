#!/bin/bash
#!/bin/bash

# Define folder and file names
folder_name="my_folder"
file1="file1.txt"
file2="file2.txt"

# Create the folder
mkdir "$folder_name"

# Create the files inside the folder
touch "$folder_name/$file1" "$folder_name/$file2"

echo "Folder '$folder_name' and files '$file1' and '$file2' created successfully."

