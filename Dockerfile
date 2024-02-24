FROM python:3.11-slim-buster

RUN apt-get update
RUN pip install --upgrade pip

RUN pip install fonttools
RUN pip install brotli
RUN pip install zopfli