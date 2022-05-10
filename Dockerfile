# Using base image provided by nginx unit
FROM docker pull  kaw393939/apache-python-ubuntu
# Alternatively you can use different tags from https://hub.docker.com/r/nginx/unit

COPY requirements.txt /fastapi/requirements.txt

RUN pip install -r /fastapi/requirements.txt

COPY config.json /docker-entrypoint.d/config.json

COPY . /fastapi
