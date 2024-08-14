#!/bin/bash

# TODO: add a command todo new, that creates a new todo file even if there was already one for today

# Define the Documents directory
documents_dir="$HOME/Documents"

# Create the todos directory if it doesn't exist
mkdir -p "$documents_dir/todos"

# Get the current date 
current_date=$(date "+%Y_%m_%d")

# Define the filename
filename="${documents_dir}/todos/todo_${current_date}.md"

# Create the file
touch "$filename"

# Open the file in nvim (or any text editor you prefer)
nvim "$filename"
