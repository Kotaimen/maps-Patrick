FROM ubuntu:14.04
MAINTAINER WeiLiang Qian <gliese.q@gmail.com>
LABEL Description="Base image for map-Patrick data authorization."

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    wget \
    gdal-bin \
    make \
    python-gdal \
    python-pip  \
    postgresql-client \
    postgresql-client-common \
    postgis \
    && pip install awscli

WORKDIR /root

RUN set -x \
    && wget http://imposm.org/static/rel/imposm3-0.1dev-20150515-593f252-linux-x86-64.tar.gz \
    && tar xzf imposm3-0.1dev-20150515-593f252-linux-x86-64.tar.gz

ENV PATH=/root/imposm3-0.1dev-20150515-593f252-linux-x86-64:$PATH
ENV MAP_HOME=/tmp/data-Patrick

WORKDIR $MAP_HOME

COPY docker_run.sh ./

VOLUME ["$MAP_HOME", "$MAP_HOME/naturalearth", "$MAP_HOME/osm", "$MAP_HOME/imposm3"]

ENTRYPOINT ["./docker_run.sh"]

