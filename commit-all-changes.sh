#!/bin/bash

# Check if a commit message was provided as an argument
if [ -z "$1" ]; then
  echo "No commit message provided."
  echo "Usage: ./commit-all-changes.sh \"Your commit message\""
  exit 1
fi

# Stage all changes
git add --all

# Commit changes with the provided message
git commit -m "$1"

# Check if commit was successful
if [ $? -eq 0 ]; then
  echo "All changes committed successfully with message: $1"
  
  # Uncomment the following line if you want to automatically push the changes after commit
git push
  
  echo "Use 'git push' to push the changes to the remote repository if not already done."
else
  echo "Failed to commit changes."
fi