FROM python:3.12.4-slim
USER root

WORKDIR /app

RUN apt update; apt -y upgrade
RUN apt install -y sudo
RUN groupadd -r pycli && useradd -r -g pycli pycli
RUN mkdir /home/pycli && chown pycli:pycli /home/pycli

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip install poetry && poetry config virtualenvs.in-project true
