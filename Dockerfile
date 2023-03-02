# syntax=docker/dockerfile:1.4

FROM python:3.11-alpine
EXPOSE 8000
WORKDIR /app
COPY requirements.txt /app
RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
 python3 -m pip install -r requirements.txt --no-cache-dir && \
 apk --purge del .build-deps
