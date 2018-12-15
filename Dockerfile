FROM python:3.7-alpine
ENV PATH /usr/local/bin:$PATH
COPY requirements.txt /tmp/
RUN apk --update add --virtual build-dependencies \
        build-base \
        libffi-dev \
        libxslt-dev \
        openssl-dev \
        gcc \
        wget \
        git \
    && pip install -r /tmp/requirements.txt \
    && apk del build-dependencies \
    && rm -rf /var/cache/apk/*
