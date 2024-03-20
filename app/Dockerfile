FROM python:3.12-slim-bullseye

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN apt-get -y update
RUN apt-get -y install curl

RUN pip3 install -r requirements.txt

COPY . /app

EXPOSE 5000

CMD ["gunicorn", "wsgi:app", "-b", "0.0.0.0:5000","-w", "4"]
