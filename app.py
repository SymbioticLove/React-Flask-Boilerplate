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
            }}
    return jsonify(data)
    

if __name__ == '__main__':
    app.run(debug=True)
