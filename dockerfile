#use an official python runtime as an image
FROM python:3.12.3

#set the working directory in the container
WORKDIR /app

#copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]