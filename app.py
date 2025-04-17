import ssl
ssl._create_default_https_context = ssl._create_unverified_context

from flask import Flask, request, jsonify, render_template
from transformers import pipeline

app = Flask(__name__)
sentiment_pipeline = pipeline("sentiment-analysis")

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/analyze", methods=["POST"])
def analyze():
    text = request.form.get("text", "")
    if not text:
        return jsonify({"error": "No text provided"}), 400
    result = sentiment_pipeline(text)
    return jsonify(result)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5001)
