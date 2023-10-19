# Using an official Python runtime as parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory content into the container at /app
COPY . /app

# Install the required packages
RUN pip install --trusted-host pypi.python.org Flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

#Run app.py when the container launched
CMD ["python", "app.py"]
