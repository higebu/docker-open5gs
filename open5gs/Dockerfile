FROM ubuntu:jammy

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        ninja-build \
        build-essential \
        flex \
        bison \
        git \
        meson \
        libsctp-dev \
        libgnutls28-dev \
        libgcrypt-dev \
        libssl-dev \
        libidn11-dev \
        libmongoc-dev \
        libbson-dev \
        libyaml-dev \
        libmicrohttpd-dev \
        libcurl4-gnutls-dev \
        libnghttp2-dev \
        libtins-dev \
        libtalloc-dev \
        iproute2 \
        ca-certificates \
        netbase \
        pkg-config \
        iptables \
        curl \
        iputils-ping \
        dnsutils \
        tcpdump

WORKDIR /
ADD https://api.github.com/repos/open5gs/open5gs/git/refs/heads/main version.json
RUN git clone https://github.com/open5gs/open5gs.git && \
    cd open5gs && \
    meson build && ninja -C build install && \
    cd .. && rm -rf open5gs && \
    apt-get autoremove -y && \
    apt-get clean
