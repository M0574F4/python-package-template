#!/bin/bash

# Variables
PROJECT_NAME=$1
AUTHOR_NAME=$2
AUTHOR_EMAIL=$3
GITHUB_REPO_URL=$4

# Check if all arguments are provided
if [ -z "$PROJECT_NAME" ] || [ -z "$AUTHOR_NAME" ] || [ -z "$AUTHOR_EMAIL" ] || [ -z "$GITHUB_REPO_URL" ]; then
  echo "Usage: ./create_project.sh <project_name> <author_name> <author_email> <github_repo_url>"
  exit 1
fi

# Template repository URL
TEMPLATE_REPO="https://github.com/m0574f4/python-package-template.git"

# Clone the template repository into the new project directory
git clone $TEMPLATE_REPO "$PROJECT_NAME"

# Navigate into the new project directory
cd "$PROJECT_NAME" || { echo "Failed to navigate to project directory"; exit 1; }

# Run the initialization script from the template
./init_project.sh "$PROJECT_NAME" "$AUTHOR_NAME" "$AUTHOR_EMAIL"

# Set the remote repository to the provided GitHub repo URL
git remote add origin "$GITHUB_REPO_URL"

# Push the initial commit to GitHub
git branch -M main
git push -u origin main

# Output success message
echo "Project $PROJECT_NAME created and pushed to GitHub successfully."
