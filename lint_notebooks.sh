#!/bin/bash

# Define the notebook directory
NOTEBOOK_DIR="01_an_apple_a_day/notebooks"

echo "📌 Running nbQA Linting & Formatting on Notebooks in $NOTEBOOK_DIR..."

# Run Black to auto-format the code
echo "🖊️  Formatting notebooks with Black..."
nbqa black "$NOTEBOOK_DIR" --line-length 79

# Run Flake8 to check for PEP8 violations
echo "🔍 Checking PEP8 compliance with flake8..."
nbqa flake8 "$NOTEBOOK_DIR"

# Run isort to sort imports
echo "📚 Sorting imports with isort..."
nbqa isort "$NOTEBOOK_DIR"

echo "✅ Linting and formatting complete!"