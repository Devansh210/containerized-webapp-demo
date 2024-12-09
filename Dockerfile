# Use Python Base Image
FROM python:3.10-slim

# Set Working Directory
WORKDIR /app

# Copy Application Code
COPY . .

# Install Dependencies
RUN pip install -r requirements.txt

# Expose Port
EXPOSE 5000

# Run the Application
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
