FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt-get install -y make cmake g++ libsctp-dev lksctp-tools iproute2 libssl-dev git iputils-ping dnsutils tcpdump && apt-get clean
ADD https://api.github.com/repos/aligungr/UERANSIM/git/refs/heads/master version.json
RUN git clone https://github.com/aligungr/UERANSIM.git && \
    cd UERANSIM && \
    make
