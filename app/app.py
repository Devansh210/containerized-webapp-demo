from flask import Flask, jsonify

app= Flask(__name__)

@app.route('/hello')
def hello():
    return "Hello, World!", 200

@app.route('/error')
def error():
    app.logger.error("An error occurred!")
    return jsonify({"error": "Bad Request"}),400
if __name__=='__main__':
    app.run(host='0.0.0.0',port=5000)
    