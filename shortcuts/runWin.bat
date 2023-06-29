@echo off

rem Change directory to "c:\React-Flask-Boilerplate-main"
cd /d "c:\React-Flask-Boilerplate-main"

rem Open command prompt for Flask Server
start "Flask Server" cmd /k python app.py

rem Change directory to "c:\React-Flask-Boilerplate-main"
cd /d "c:\React-Flask-Boilerplate-main"

rem Open command prompt for React Server
start "React Server" cmd /k npm start

