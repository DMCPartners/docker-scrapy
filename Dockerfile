FROM python:3.7-alpine
ENV PATH /usr/local/bin:$PATH
RUN apk update \
    && apk add --no-cache --virtual build-dependencies \
        build-base \
        libffi-dev \
        libxslt-dev \
        libressl-dev \
        gcc \
        wget \
        git
COPY requirements.txt /tmp/
RUN pip install -U setuptools \
    && pip install --requirement /tmp/requirements.txt
