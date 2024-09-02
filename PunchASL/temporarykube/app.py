import flask
from flask import request, jsonify, render_template
import platform
import os

app = flask.Flask(__name__)

@app.route('/system')
def system():
    osx = platform.system()
    return jsonify({"message": f"This app is running on {osx}."})

@app.route('/greetings')
def greetings():
    return "Hello, Mate!"

@app.route('/poweroff')
def poweroff():
    return "Powering off the system..."


@app.route('/')
def index():
    return render_template('index.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True, port=5000)

