#!/bin/bash

touch task1

COMMIT_MESSAGE="Your commit message goes here"


echo "Adding changes to the staging area..."
git add task1

echo "Committing changes with message: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"


echo "Pushing changes to the remote repository..."
git push origin main

echo "Git push script executed successfully."

