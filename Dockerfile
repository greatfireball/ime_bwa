FROM ubuntu:xenial

LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the bwa mapper"

RUN apt update && apt install --yes build-essential git zlib1g-dev

RUN git clone https://github.com/lh3/bwa.git /bwa

WORKDIR /bwa
