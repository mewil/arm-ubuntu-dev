FROM ubuntu:bionic

LABEL Author Michael Wilson

RUN apt-get update && apt-get install -y \
    make \
    cmake

COPY angstrom-2010.7-test-20110311-x86_64-linux-armv7a-linux-gnueabi-toolchain.tar.bz2 /
WORKDIR /

RUN tar xjf angstrom-2010.7-test-20110311-x86_64-linux-armv7a-linux-gnueabi-toolchain.tar.bz2 -C /
