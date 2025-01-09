# Python Package Template

A boilerplate for creating Python packages quickly and efficiently. This template provides a clean and standardized structure to start building your Python project.

## Features

- Pre-configured setup for packaging and distribution.
- Includes CI/CD workflows with GitHub Actions.
- Ready-to-use testing framework.
- Standard Python files: `setup.py`, `pyproject.toml`, `LICENSE`, and more.
- Modular structure to organize your source code and notebooks.
- Easy initialization with the `create_project.sh` script.

## Quick Start

### Prerequisites

- Python 3.7 or higher.
- Git installed on your system.

### Create a New Project

1. Clone this repository:
   git clone https://github.com/m0574f4/python-package-template.git

2. Run the `create_project.sh` script to initialize your project:
   ./create_project.sh <project_name> <author_name> <author_email> <github_username>
=======
1. Create a bash script named `create_project.sh` with the following content:

   ```bash
   #!/bin/bash

   # Variables
   PROJECT_NAME=$1
   AUTHOR_NAME=$2
   AUTHOR_EMAIL=$3

   # Check if all arguments are provided
   if [ -z "$PROJECT_NAME" ] || [ -z "$AUTHOR_NAME" ] || [ -z "$AUTHOR_EMAIL" ]; then
     echo "Usage: ./create_project.sh <project_name> <author_name> <author_email>"
     exit 1
   fi

   # Template repository URL
   TEMPLATE_REPO="https://github.com/m0574f4/python-package-template.git"

   # Clone the template repository into the new project directory without git history
   git clone --depth 1 $TEMPLATE_REPO "$PROJECT_NAME"

   # Check if cloning was successful
   if [ $? -ne 0 ]; then
     echo "Failed to clone the template repository."
     exit 1
   fi

   # Remove the .git directory to detach from the template repo
   rm -rf "$PROJECT_NAME/.git"

   # Navigate into the new project directory
   cd "$PROJECT_NAME" || { echo "Failed to navigate to project directory"; exit 1; }

   # Run the initialization script from the template
   ./init_project.sh "$PROJECT_NAME" "$AUTHOR_NAME" "$AUTHOR_EMAIL"

   # Initialize a new git repository
   git init

   # Configure Git user information
   git config user.email "$AUTHOR_EMAIL"
   git config user.name "$AUTHOR_NAME"

   # Add all files to the repository
   git add .

   # Commit the initial commit
   git commit -m "Initial commit"

   # Output success message
   echo "Project $PROJECT_NAME created and initialized successfully."
   ```

=======
1. Create a bash script named `create_project.sh` with the following content:

   ```bash
   #!/bin/bash

   # Variables
   PROJECT_NAME=$1
   AUTHOR_NAME=$2
   AUTHOR_EMAIL=$3

   # Check if all arguments are provided
   if [ -z "$PROJECT_NAME" ] || [ -z "$AUTHOR_NAME" ] || [ -z "$AUTHOR_EMAIL" ]; then
     echo "Usage: ./create_project.sh <project_name> <author_name> <author_email>"
     exit 1
   fi

   # Template repository URL
   TEMPLATE_REPO="https://github.com/m0574f4/python-package-template.git"

   # Clone the template repository into the new project directory without git history
   git clone --depth 1 $TEMPLATE_REPO "$PROJECT_NAME"

   # Check if cloning was successful
   if [ $? -ne 0 ]; then
     echo "Failed to clone the template repository."
     exit 1
   fi

   # Remove the .git directory to detach from the template repo
   rm -rf "$PROJECT_NAME/.git"

   # Navigate into the new project directory
   cd "$PROJECT_NAME" || { echo "Failed to navigate to project directory"; exit 1; }

   # Run the initialization script from the template
   ./init_project.sh "$PROJECT_NAME" "$AUTHOR_NAME" "$AUTHOR_EMAIL"

   # Initialize a new git repository
   git init

   # Configure Git user information
   git config user.email "$AUTHOR_EMAIL"
   git config user.name "$AUTHOR_NAME"

   # Add all files to the repository
   git add .

   # Commit the initial commit
   git commit -m "Initial commit"

   # Output success message
   echo "Project $PROJECT_NAME created and initialized successfully."
   ```

2. Run the script with the following command:
   ```bash
   ./create_project.sh <project_name> <author_name> <author_email>
   ```

   Example:
   ./create_project.sh MyProject "John Doe" "john.doe@example.com" "johndoe"

3. Your new project will be created in the `<project_name>` directory, initialized with a new Git repository, and pushed to `https://github.com/<github_username>/<project_name>.git`.

### What's Included

- **`src/`**: Main source code folder for your package.
- **`notebooks/`**: Directory for Jupyter notebooks.
- **`tests/`**: Preconfigured testing folder with `pytest`.
- **`setup.py`** and **`pyproject.toml`**: Files for packaging and dependencies.
- **`.github/workflows/`**: Ready-to-use CI/CD workflows.
- **README.md**: A template for your project documentation.

### Local Development

1. Navigate to your project directory:
   cd <project_name>

2. Create a virtual environment and install dependencies:
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\\Scripts\\activate
   pip install -r requirements.txt

3. Start coding!

### Remote Repository

The script automatically sets up a remote repository based on your GitHub username and project name. After running the script, your repository will be pushed to:
https://github.com/<github_username>/<project_name>.git

No additional manual steps are needed to link the remote repository.

## Contributing

Contributions are welcome! Please fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
