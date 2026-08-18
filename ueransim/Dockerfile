FROM ubuntu:jammy

ARG UERANSIM_VERSION=v3.3.0

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt-get install -y make cmake g++ libsctp-dev lksctp-tools iproute2 libssl-dev git iputils-ping dnsutils tcpdump && apt-get clean
RUN git clone --depth 1 --branch ${UERANSIM_VERSION} https://github.com/aligungr/UERANSIM.git && \
    cd UERANSIM && \
    make
