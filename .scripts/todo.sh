#!/bin/bash

# Define the Documents directory
documents_dir="$HOME/Documents"

# Create the todos directory if it doesn't exist
mkdir -p "$documents_dir/todos"

# Get the current date and time
current_date_time=$(date "+%Y_%m_%d_%H_%M_%S")

# Define the filename
filename="${documents_dir}/todos/todo_${current_date_time}.txt"

# Create the file
touch "$filename"

# Open the file in nvim (or any text editor you prefer)
nvim "$filename"
