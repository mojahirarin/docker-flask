from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def hello():
    return jsonify({
        'message': 'Hello, World!',
        'status': 'success'
    })


@app.route('/health')
def health():
    return jsonify({
        'status': 'healthy'
    })


@app.route('/api/info')
def info():
    return jsonify({
        'name': 'Flask API Server',
        'version': '0.1.0',
        'description': 'Simple Flask API Server with Poetry'
    })


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=False)
