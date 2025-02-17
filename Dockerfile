#Base Image
FROM python:3.9-slim

# working directory

WORKDIR /app

# copying source code to the working directory
COPY . .

# Run the build commands
RUN pip install -r requirements.txt

#Exposing the port
EXPOSE 80

# Serve the app / Keep it running
CMD ["python","run.py"]

