from flask import Flask, jsonify
import random

app = Flask(__name__)

products = ["Laptop", "Smartphone", "Headphones", "Smartwatch", "Tablet"]

@app.route('/recommend')
def recommend_product():
    return random.choice(products)

@app.route('/health', methods=['GET'])
def health_check():
    return jsonify(status="healthy"), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)