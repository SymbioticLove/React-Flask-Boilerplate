#!/bin/bash

# Change directory to "/Users/your-username/React-Flask-Boilerplate-main"
cd "/Users/your-username/React-Flask-Boilerplate-main"

# Create virtual environment
python3 -m venv env

# Activate the virtual environment
source env/bin/activate

# Install Flask and Flask-Cors dependencies
pip install flask flask_cors

# Install Node modules
npm install

# Display setup completion message
echo "Setup complete. Run the appropriate shortcut for your OS to initialize servers!"

# Deactivate the virtual environment
deactivate
