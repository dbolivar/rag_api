#!/bin/bash
set -e

# Install the required modules
pip install -r requirements.txt

# Execute the original command
exec "$@"
