# use lightweight alpine linux image and install dependencies (python2 and py-pip) 
FROM alpine
RUN apk add --update python2 py-pip
ADD . /app
WORKDIR /app
RUN pip2 install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
