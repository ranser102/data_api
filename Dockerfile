# Use a base image with Python installed
FROM --platform=linux/amd64 python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python api and train_model and requirements.txt to the working directory
COPY data_api.py requirements.txt train_model.py /app/

# Install the required packages using pip
RUN pip install --no-cache-dir -r requirements.txt

# Train the model and create the a_model.joblib
RUN python3 train_model.py

# Expose the port on which the API will be running (change it if needed)
EXPOSE 8000

# Start the API when the container is run
CMD ["python3", "data_api.py"]
