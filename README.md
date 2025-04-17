# Flask Sentiment Analysis Web App

This is a simple Flask web application that uses a pre-trained sentiment analysis model from Hugging Face to analyze user-input text.

## Project Structure

lask_sentiment_app/ ├── app.py ├── requirements.txt ├── Dockerfile ├── README.md └── templates/ └── index.html



## Setup & Run

### Locally

1. **Install Dependencies:**  
   In your virtual environment, run:  
pip install -r requirements.txt


2. **Run the App:**  
python app.py

Visit `http://127.0.0.1:5000/` in your browser.

### Using Docker

1. **Build the Docker Image:**  
From the project directory, run:  
docker build -t flask-sentiment-app .


2. **Run the Docker Container:**  
docker run -p 5000:5000 flask-sentiment-app


Visit `http://localhost:5000/` in your browser.



---

## Model Info
This app uses a pre-trained sentiment analysis model from Hugging Face, for example:
`distilbert-base-uncased-finetuned-sst-2-english`.

## CI/CD Pipeline
A GitHub Actions workflow automatically builds and pushes the Docker image whenever you push to `main`.

### Workflow File
`.github/workflows/docker-image.yml`

### How to Pull
```bash
docker pull prameshkumar/flask-sentiment-app:latest








