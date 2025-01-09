#!/bin/bash

# Variables
PROJECT_NAME=$1
AUTHOR_NAME=$2
AUTHOR_EMAIL=$3

# Check if all arguments are provided
if [ -z "$PROJECT_NAME" ] || [ -z "$AUTHOR_NAME" ] || [ -z "$AUTHOR_EMAIL" ]; then
  echo "Usage: ./init_project.sh <project_name> <author_name> <author_email>"
  exit 1
fi

# Update setup.py with new project details
sed -i "s/your_project_name/$PROJECT_NAME/g" setup.py
sed -i "s/Your Name/$AUTHOR_NAME/g" setup.py
sed -i "s/youremail@example.com/$AUTHOR_EMAIL/g" setup.py

# Add a sample test if it doesn't exist
if [ ! -s tests/test_basic.py ]; then
  echo "def test_example():" > tests/test_basic.py
  echo "    assert True" >> tests/test_basic.py
fi

# Set up virtual environment
python -m venv .venv
source .venv/bin/activate

# Install dependencies
pip install pipenv
pipenv install --dev

# Initialize Git if not already initialized
if [ ! -d ".git" ]; then
  git init
  git config user.email "$AUTHOR_EMAIL"
  git config user.name "$AUTHOR_NAME"
fi

# Add and commit changes
git add .
git commit -m "Initial commit"

echo "Project $PROJECT_NAME initialized successfully."
