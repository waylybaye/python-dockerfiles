FROM python:3.6-alpine3.10


RUN apk add --virtual .build-deps alpine-sdk
RUN apk add --no-cache libxml2 libxml2-dev libxslt libxslt-dev

RUN pip3 install lxml gevent

RUN apk del .build-deps
