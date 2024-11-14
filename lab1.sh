#!/bin/bash
# Prompts the user for a directory name and then creates it with mkdir.
# Changes to the new directory and prints out where it is using pwd.
echo "Enter the directory name:"
read NEW_DIR
# Save directory to be able to return to it:
ORIG_DIR=$(pwd)
mkdir $NEW_DIR
# Go to new directory
cd $NEW_DIR
# Print current directory
pwd
