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
            'box2': "Inside the 'shortcuts' directory, you will find setup shell files for Mac and Linux, as well as run shortcuts. Setup will create a virtual environment, activate it, and install the necessary dependencies. Run will initialize both servers.",
            }
    return jsonify(data)
    
if __name__ == '__main__':
    app.run(debug=True)