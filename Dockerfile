# Use an official lightweight Python image.
FROM python:3.8-slim

# Set the working directory inside the container.
WORKDIR /app

# Copy the requirements file and install the dependencies.
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into the container.
COPY . .

# Expose port 5000 to the outside world.
EXPOSE 5000

# Define environment variable for Flask (optional).
ENV FLASK_APP=app.py

# Run the application.
CMD ["python", "app.py"]

