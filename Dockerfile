FROM python:3.6-alpine3.10

RUN apk add --virtual .build-deps alpine-sdk

RUN pip3 install lxml gevent

RUN del .build-deps
