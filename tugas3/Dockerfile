FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y wget zip python python-pip libmysqlclient-dev python-dev
RUN pip install --upgrade pip

RUN wget https://cloud.fathoniadi.my.id/reservasi.zip && unzip reservasi.zip

WORKDIR reservasi
RUN pip install -r req.txt
CMD python server.py

EXPOSE 9453
