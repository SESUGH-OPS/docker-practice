FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port the application runs on (if needed)
EXPOSE 5000

# Command to run the application (modify as needed)
CMD ["python", "app.py"]
