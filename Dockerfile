FROM python:3.11.7

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

RUN pip install --upgrade pip

COPY requirements.txt /code/

RUN pip install -r requirements.txt

RUN apt-get update -y && apt-get install -y libpcre3 libpcre3-dev

RUN pip install uwsgi

COPY . /code
