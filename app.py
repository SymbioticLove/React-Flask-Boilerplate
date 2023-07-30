from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Enable CORS for all routes in the app

@app.route('/api/data')
def get_data():
    data = {'message': 'Flask in the back',
            'link': {
                'href': 'https://github.com/SymbioticLove',
                'text': 'View our other projects on GitHub!'
            },
            'box1': "This is a boilerplate template for creating a web app using a React front-end and Flask back-end. Everything is already linked and proxied if you're running ports 3000/5000. All you need to do is clear out the return and data statements and code!",
            'box2': "The batch file included in the 'shortcuts' directory, Initialize, will activate the virtual enviroment, install the necessary dependencies, launch the Flask server, launch the React app, and then disable the virtual environment to prevent accidental modifications",
            'box3': "This assumes that the repo was installed at your C: drive. If it was installed elsewhere, you will need to update the routes in Initialize.bat. If you require any assistance with this template, reach out to <a href='mailto:support@symbiotic.love?subject=react/flask-template'>support@symbiotic.love!"
            }
    return jsonify(data)
    
if __name__ == '__main__':
    app.run(debug=True)