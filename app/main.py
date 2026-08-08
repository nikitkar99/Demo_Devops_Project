from flask import Flask, request, jsonify
import math

app = Flask(__name__)

@app.route("/add", methods=["POST"])
def add():
    data = request.get_json()
    return jsonify({"result": data["a"] + data["b"]})

@app.route("/sqrt", methods=["POST"])
def sqrt():
    data = request.get_json()
    return jsonify({"result": math.sqrt(data["x"])})

@app.route("/compound_interest", methods=["POST"])
def compound_interest():
    data = request.get_json()
    p, r, t = data["principal"], data["rate"], data["time"]
    result = p * ((1 + r/100) ** t)
    return jsonify({"result": result})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
