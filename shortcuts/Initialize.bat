@echo off

rem Change directory to "c:\React-Flask-Boilerplate-main"
cd /d "c:\React-Flask-Boilerplate-main"

rem Activate the virtual environment
call env\Scripts\activate

rem Install Flask and Flask-Cors dependencies
pip install flask flask_cors

rem Install Node modules
cmd /c npm install

rem Run "python app.py"
start "Flask Server" cmd /c python app.py

rem Change directory to "c:\React-Flask-Boilerplate-main"
cd /d "c:\React-Flask-Boilerplate-main"

rem Execute "npm start"
start "React Server" cmd /c npm start

rem Deactivate the virtual environment (optional)
deactivate

rem Execute "npm start"
start "React Server" cmd /c npm start

rem Deactivate the virtual environment (optional)
deactivate
