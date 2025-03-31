\#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the project root directory (one level up from scripts/)
cd "$(dirname "$0")/.."

# Activate the virtual environment
source .venv/bin/activate

# Set PYTHONPATH to include microservices directories
export PYTHONPATH="$(pwd)/microservices/service1:$(pwd)/microservices/service2:$PYTHONPATH"

# Run the tests
pytest -s microservices/service1/tests/test_app.py
pytest -s  microservices/service2/tests/test_app.py
