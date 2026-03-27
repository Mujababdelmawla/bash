#!/bin/bash 


# define folder and file names 

folder_name="/mnt/c/Users/asus/bash/my_folder"
file1="$folder_name/file1.txt"
file2="$folder_name/file2.txt"
archive_name="/mnt/c/Users/asus/bash/my_folder_archive.tar.gz"

# step1: create the folder 
mkdir -p "$folder_name"

# step2: create file1.txt and add a content inside it 
echo "this is the 1st content of the 1st file" >> "$file1"

# step3: create file2.txt and copy the content of file1.txt to it 
cp "$file1" "$file2"

# step4: compress the folder into a .tar.gz

tar -czf "$archive_name" -C "/mnt/c/Users/asus/bash" "my_folder"
