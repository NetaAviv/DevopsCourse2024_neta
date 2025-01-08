FROM python:3.12
COPY . /src/app
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
WORKDIR /src/app
RUN pip install --editable .
RUN flask init-db
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
