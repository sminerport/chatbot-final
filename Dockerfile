FROM python:3.9.4

ENV APP_HOME /app

COPY ./requirements.txt /app/requirements.txt

WORKDIR $APP_HOME

RUN pip install -r requirements.txt

COPY . /app

CMD [ "python3", "app.py" ]