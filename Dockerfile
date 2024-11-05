# Use a lightweight Python base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY src/product-recommendation.py .

# Expose the port that the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "product-recommendation.py"]