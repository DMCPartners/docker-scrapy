FROM python:3.7-alpine
ENV PATH /usr/local/bin:$PATH
COPY requirements.txt /tmp/
RUN apk --update --no-cache add \
        build-base \
        libffi-dev \
        libpq \
        postgresql-dev \
        libxslt-dev \
        openssl-dev \
        gcc \
        wget \
        git \
    && pip install -r /tmp/requirements.txt \
    && rm -rf /var/cache/apk/*
