FROM ubuntu:focal

LABEL maintainer="Source Engineers GmbH" \
      description="Container for C/C++ development with cmake" \
      version="0.1.0"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin
RUN apt-get update -y && \
    apt-get install -y tzdata

RUN apt-get install -y --no-install-recommends\
                git \
                curl \
                gcc-10 \
                g++-10 \
                clang-10 \
                build-essential \
                cmake \
                unzip \
                tar \
                ca-certificates \
                ssh-client \
                ninja-build \
                lcov && \
    apt-get autoclean && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*