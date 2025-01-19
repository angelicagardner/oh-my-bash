#!/bin/bash

# Navigate to your .oh-my-bash directory
cd ~/.oh-my-bash || { echo "Directory ~/.oh-my-bash not found"; exit 1; }

# Fetch updates from the upstream repository
echo "Fetching updates from upstream..."
git fetch upstream

# Merge updates from the upstream branch into your fork's master branch
echo "Merging updates from upstream into master..."
git checkout master
git merge upstream/master

# Push the merged updates to your fork
echo "Pushing updates to your fork's master branch..."
git push origin master

# Rebase your 'my-adjustments' branch onto the updated master
echo "Rebasing 'my-adjustments' branch onto master..."
git checkout my-adjustments
git rebase master

# Push the rebased 'my-adjustments' branch to your fork
echo "Pushing rebased 'my-adjustments' branch to origin..."
git push origin my-adjustments --force-with-lease

echo "Oh My Bash fork and 'my-adjustments' branch are now up-to-date!"
