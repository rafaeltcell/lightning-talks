FROM python:2.7

ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install -y vim
RUN pip install --upgrade pip

RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN pip install uwsgi
RUN pip install gunicorn
RUN pip install tcell_agent

#ADD . /app

#RUN fab fake_data
