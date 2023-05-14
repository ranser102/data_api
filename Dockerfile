# Use a base image with Python installed
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script and requirements.txt to the working directory
COPY eran_api.py requirements.txt train_model.py /app/

# Install the required packages using pip
RUN pip install --no-cache-dir -r requirements.txt
RUN python3 train_model.py

# Expose the port on which the API will be running (change it if needed)
EXPOSE 8000

# Start the API when the container is run
CMD ["python3", "eran_api.py"]
