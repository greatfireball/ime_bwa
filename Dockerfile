FROM ubuntu:xenial

LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the bwa mapper"

RUN apt update && apt install --yes build-essential git zlib1g-dev

RUN git clone --recursive https://github.com/lh3/bwa.git /bwa

WORKDIR /bwa

RUN git checkout v0.7.16

RUN make

ENV PATH=/bwa:$PATH

VOLUME /data

WORKDIR /data
