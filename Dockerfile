FROM heroku/python
RUN python --version
RUN pwd

COPY ./app ./app
RUN pwd
RUN ls
WORKDIR ./app
RUN pwd
RUN ls

CMD gunicorn -b 0.0.0.0:$PORT app.app:app --log-file=-
