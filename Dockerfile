#Dockerfile to build application 
FROM python:3.10-slim-buster

USER root

WORKDIR /app

COPY ./analytics/* .

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
#RUN sudo apt update -y && \
#    sudo apt install -y build-essential libpq-dev && \
#    sudo pip install -y --upgrade pip setuptools wheel

RUN pip install -r requirements.txt
# Start the application
# Run the application when the container starts
CMD ["python", "app.py"]
