# https://hub.docker.com/_/python
# 3.7-alpine
# 3.7-windowsservercore-1803
FROM python:3.7-alpine
MAINTAINER SmartPoint

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
