#!/bin/bash

# Inform the user about creating a new orphan branch
echo "Creating a new orphan branch..."

# Create a new orphan branch
git checkout --orphan temp

# Inform the user about adding files to the staging area
echo "Adding files to the staging area..."

# Add all files to the staging area
git add -A

# Inform the user about making a commit
echo "Making a commit..."

# Make an commit with a meaningful message
git commit -m "Commit"

# Inform the user about deleting the old main branch
echo "Deleting the old 'main' branch (if it exists)..."

# Delete the old main branch (if it exists)
git branch -D main

# Inform the user about renaming the branch to 'main'
echo "Renaming the current branch to 'main'..."

# Rename the current branch to 'main'
git branch -m main

# Inform the user about force-pushing the changes
echo "Force pushing the changes to the remote repository..."

# Force push the changes to the remote repository
git push -f origin main

# Inform the user about the completion of the script
echo "Branch 'main' has been created and pushed to the remote repository."
