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
