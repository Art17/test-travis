"""
Provide /hello-world endpoint which returns hello world string.
"""
from http import HTTPStatus

from flask import (
    Flask,
    jsonify,
)

server = Flask(__name__)


@server.route('/hello-world', methods=['GET'])
def hello_world():
    """
    Return hello world string.
    """
    return jsonify({'result': 'hello_world'}), HTTPStatus.OK


if __name__ == '__main__':
    server.run(debug=True, host='0.0.0.0', port=8080)
