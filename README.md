# docker-scrapy

[![](https://img.shields.io/docker/stars/dmcpartners/docker-scrapy.svg)](https://hub.docker.com/r/dmcpartners/docker-scrapy 'DockerHub') 
[![](https://img.shields.io/docker/pulls/dmcpartners/docker-scrapy.svg)](https://hub.docker.com/r/dmcpartners/docker-scrapy 'DockerHub') 
[![](https://images.microbadger.com/badges/image/dmcpartners/docker-scrapy.svg)](https://microbadger.com/images/dmcpartners/docker-scrapy "Get your own image badge on microbadger.com")

A basic docker image based on Alpine Linux for Scrapy.

The pre-installed Python libraries:

* scrapy 1.5.1
* pymongo 3.7.2
* python-dotenv 0.10.1
* scrapy-splash 0.7.2

## Usage

Docker Pull Command

```shell
docker pull dmcpartners/docker-scrapy
```

The public page on Docker Hub: [dmcpartners/docker-scrapy](https://hub.docker.com/r/dmcpartners/docker-scrapy)

## Example

```dockerfile
# Dockerfile
FROM dmcpartners/docker-scrapy
ADD . /code
WORKDIR /code
CMD scrapy list | xargs -n 1 scrapy crawl
```
