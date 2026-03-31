#!/bin/bash

# Defining a Function to pull/clone the repository
pull_clone()
{
	repo_url=$1
	saved_in=$2


	# extracting the name from .git
	repo_name=$(basename $repo_url .git)

	# check if the repository exsts or not 

	if [ -d "$saved_in$repo_name" ];
	then 
		echo "the $repo_name is already exists"
		cd "$saved_in/$repo_name" && git pull
	else 

		echo "$repo_name doesn't exists... cloning "
		git clone "$repo_url" "$saved_in/$repo_name"
	
	fi


}

# Defining a functoin to backup the repository aftre pulling/cloning it 

create_backup()
{

repo_path=$1
backup_location=$2
timestamp=$(date +%Y%m%d%H%M%S)
backup_name=$(basename $repo_path)
tar -czf "$backup_location/$backup_name-$timestamp.tar.gz" -C "$(dirname $repo_path)" "$(basename $repo_path)"

echo "backup created successfully"

}
# the main program
echo "Enter the repository url : "
read repo_url 

# Defining folders paths 
saved_in="./projects"
backup_location="./project_packups"

# create the directories
mkdir -p $saved_in
mkdir -p $backup_location

# calling the function to pull/clone
pull_clone "$repo_url" "$saved_in"

# calling the function to backup the repo 
create_backup "$saved_in/$(basename $repo_url .git)" "$backup_location"
echo "backup process completed..."
