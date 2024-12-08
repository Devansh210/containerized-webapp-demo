# Python Web App Dockerfile

# Step 1: Use the official Python image from Docker Hub
FROM python:3.9-slim

# Step 2: Set the working directory
WORKDIR /app 

# Step 3: Copy the application code
COPY . /app /app/

# Step 4: Copy requirements.txt file (if not already in the copy step)
COPY requirements.txt /app/

# Step 5: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 6: Expose the port for the web app
EXPOSE 5000

# Step 7: Run the application
CMD ["python", "app.py"]
