@echo off

rem Change directory to "c:\react-flask-framework"
cd /d "c:\build\react-flask-framework"

rem Activate the virtual environment
call env\Scripts\activate

rem Install Flask and Flask-Cors dependencies
pip install flask flask_cors

rem Run "python app.py"
start "Flask Server" cmd /c python app.py

rem Change directory to "c:\react-flask-framework"
cd /d "c:\build\react-flask-framework"

rem Execute "npm start"
start "React Server" cmd /c npm start

rem Deactivate the virtual environment (optional)
deactivate
