#!/bin/bash

# Variables
PROJECT_NAME=$1

# Check if project name is provided
if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./init_project.sh <project_name>"
  exit 1
fi

# Rename project directory
mv your_project_name "$PROJECT_NAME"

# Navigate into the project directory
cd "$PROJECT_NAME"

# Update setup.py with new project name
sed -i "s/your_project_name/$PROJECT_NAME/g" setup.py
sed -i "s/yourusername/yourusername/g" setup.py
sed -i "s/youremail@example.com/youremail@example.com/g" setup.py

# Set up virtual environment
python -m venv .venv
source .venv/bin/activate

# Install dependencies
pip install pipenv
pipenv install --dev

# Initialize Git
git init
git add .
git commit -m "Initial commit"

echo "Project $PROJECT_NAME initialized successfully."
