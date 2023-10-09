# Use the official Python image as the base image
FROM python:3.8

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install project dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/
