# Use an official Python runtime as a parent image
FROM python:3
FROM python:3.12

# Install necessary libraries
RUN apt-get update \
    && apt-get install -y \
       python3-tk \
       xvfb \
    && rm -rf /var/lib/apt/lists/*
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# (You don't have any in this example, but you might in a real project)
# RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run calculator.py when the container launches
CMD ["python", "./calculator.py"]
