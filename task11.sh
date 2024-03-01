#!/bin/bash
touch file1
touch file2
# Specify the commit message
COMMIT_MESSAGE="Your commit message goes here"

# Add all changes to the staging area
echo "Adding changes to the staging area..."
git add .

# Commit changes with the specified commit message
echo "Committing changes with message: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"

# Push changes to the remote repository
echo "Pushing changes to the remote repository..."
git push origin main

echo "Git push script executed successfully."

