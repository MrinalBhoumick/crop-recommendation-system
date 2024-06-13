# Use Python 3.12 as the base image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy all files from the current directory to /app in the container
COPY . .

# Command to run the application
CMD ["python", "app.py"]
