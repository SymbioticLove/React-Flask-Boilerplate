#!/bin/bash

# Change directory to "React-Flask-Boilerplate-main"
cd /React-Flask-Boilerplate-main

# Run "python app.py" in the background
python app.py &

# Change directory to "React-Flask-Boilerplate-main"
cd /React-Flask-Boilerplate-main

# Execute "npm start" in a new terminal window
open -a Terminal "npm start"
