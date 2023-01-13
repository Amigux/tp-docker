FROM python:3

RUN apt-get install gcc wget
RUN wget https://dlm.mariadb.com/2678579/Connectors/c/connector-c-3.3.3/mariadb-connector-c-3.3.3-debian-buster-amd64.tar.gz -O - | tar -zxf - --strip-components=1 -C /usr
ENV LD_LIBRARY_PATH=/usr/lib/mariadb

ENV APP_DB_NAME=database
ENV APP_DB_USER=user
ENV APP_DB_PASSWORD=password
ENV APP_DB_HOST=host
ENV APP_DB_PORT=port

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN apt update -y
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python", "app-python/main.py" ]