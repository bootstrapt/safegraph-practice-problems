#!/bin/bash

# ABOUT
## Publish project notebook to github pages and update github in one command.

# CONFIG
## set github pages directory
GH_PAGES_DIR="docs"
GH_PAGES_FILENAME="index.html"

# RUNTIME
## create new html file from latest notebook
pipenv run jupyter nbconvert SafeGraph\ Interview\ Problem.ipynb --no-input --no-prompt --to=html --output-dir=$GH_PAGES_DIR --output=$GH_PAGES_FILENAME

git add $GH_PAGES_DIR/$GH_PAGES_FILENAME
echo "Staged $GH_PAGES_DIR/$GH_PAGES_FILENAME" 

## add commit
git commit -m "updated $GH_PAGES_DIR/$GH_PAGES_FILENAME with latest notebook output"
echo "Commited"

## get current branch and push
current_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git push origin "$current_branch"
echo "Pushed changes to '$current_branch'"
