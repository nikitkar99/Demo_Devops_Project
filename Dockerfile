# Base image: lightweight Python
FROM python:3.10-slim

# Working directory inside container
WORKDIR /app

# Copy dependencies file
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ .

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "main.py"]
