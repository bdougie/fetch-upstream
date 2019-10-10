#! /bin/sh

## Set git user to github-action
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

# inspired by https://dev.to/ranewallin/how-to-keep-your-forked-repository-current-38mn

# If you haven't already added an upstream source, set your upstream
# to the fork's original source
git remote add upstream "https://github.com/${UPSTREAM}"

# Verify upstream is correct, you should see the URL for the upstream fetch and push 
git remote -v

# Get all recent branches and commits from the upstream
git fetch upstream

# Merge the branches and commits from the upstream
git merge upstream/master -v

# exit if there are no changes to commit
# [[ `git status --porcelain` ]] || exit

# Push the updated master to your forked remote repository
git remote set-url origin "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git push -u origin master
