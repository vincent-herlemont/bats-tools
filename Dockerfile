FROM ubuntu:22.04

RUN apt update
RUN apt install -y curl

# Install bats
ENV BATS="/etc/bats"
RUN mkdir -p $BATS

WORKDIR $BATS
COPY install.sh .
ENV BATS_CORE_VERSION=v1.6.0
RUN ./install.sh bats-core https://github.com/bats-core/bats-core/archive/refs/tags/$BATS_CORE_VERSION.tar.gz
RUN ./install.sh bats-assert https://github.com/bats-core/bats-assert/archive/refs/tags/v2.0.0.tar.gz
RUN ./install.sh bats-file https://github.com/bats-core/bats-file/archive/refs/tags/v0.3.0.tar.gz
RUN ./install.sh bats-support https://github.com/bats-core/bats-support/archive/refs/tags/v0.3.0.tar.gz
RUN rm install.sh

ENV PATH=$PATH:/$BATS/bats-core/bin/

RUN apt clean

WORKDIR /