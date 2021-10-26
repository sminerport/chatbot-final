FROM python:3.9.4

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . /app

RUN pip install -r requirements.txt

CMD [ "python3", "app.py" ]