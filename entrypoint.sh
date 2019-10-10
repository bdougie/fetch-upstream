#! /bin/sh

# check values
if [ -z "${GITHUB_TOKEN}" ]; then
    echo "error: not found GITHUB_TOKEN"
    exit 1
fi

## Set git user to github-action
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

# inspired by https://dev.to/ranewallin/how-to-keep-your-forked-repository-current-38mn

# If you haven't already added an upstream source, set your upstream
# to the fork's original source
git remote add upstream "https://github.com/$INPUT_UPSTREAM"

# Verify upstream is correct, you should see the URL for the upstream fetch and push 
git remote -v

# Get all recent branches and commits from the upstream
git fetch upstream

# Merge the branches and commits from the upstream
git merge upstream/master -v
