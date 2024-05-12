# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container (optional)
EXPOSE 80

# Set up environment variables, if any
ENV NAME World

# Set the entrypoint to the Python interpreter
ENTRYPOINT ["python", "./cloud_enum.py"]
