FROM python:3.12.4-slim as development
USER root

WORKDIR /app

RUN apt update; apt -y upgrade
RUN apt install -y sudo

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip install poetry && poetry config virtualenvs.in-project true
