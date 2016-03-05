FROM ubuntu:14.04

MAINTAINER  Kotaimen <kotaimen.c@gmail.com>
ENV         DEBIAN_FRONTEND noninteractive

WORKDIR     /tmp/

ADD         requirements.txt ./

RUN         set -x \
            &&  apt-get -q update \
            &&  apt-get -yq install \
                locales\
                curl  \
                imagemagick \
                make \
                python-pip \
                python-yaml \
                python-lxml \
                python-pil \
                mapnik-utils \
            && curl -sL https://deb.nodesource.com/setup_4.x | bash - \
            && apt-get -yq install nodejs \
            && npm install -g carto \
            && pip install -rrequirements.txt

RUN         locale-gen en_US.UTF-8
ENV         LANG=en_US.UTF-8 \
            LANGUAGE=en_US:en \
            LC_ALL=en_US.UTF-8
