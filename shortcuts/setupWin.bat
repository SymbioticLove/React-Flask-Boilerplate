@echo off

rem Change directory to "c:\React-Flask-Boilerplate-main"
cd /d "c:\React-Flask-Boilerplate-main"

rem Create virtual environment
python -m venv env

rem Activate the virtual environment
call env\Scripts\activate

rem Install Flask and Flask-Cors dependencies
pip install flask flask_cors

rem Install Node modules
cmd /c npm install

rem Display setup completion message
echo Setup complete. Run the appropriate shortcut for your OS to initialize servers!

rem Deactivate the virtual environment
deactivate
