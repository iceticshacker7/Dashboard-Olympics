# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application code and dependencies file to the container
COPY . .

# Install the required Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Streamlit uses (default is 8501)
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
