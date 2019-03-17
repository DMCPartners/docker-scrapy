FROM python:3.7-alpine
ENV PATH /usr/local/bin:$PATH
COPY requirements.txt /tmp/
RUN apk --update --no-cache add --virtual \
        deps \
        gcc \
        postgresql-dev \
        python3-dev \
        musl-dev \
        build-base \
        libffi-dev \
        libpq \
        libxslt-dev \
        openssl-dev \
        wget \
        git \
    && pip install -r /tmp/requirements.txt \
    && rm -rf /var/cache/apk/* \
    && apk del deps
