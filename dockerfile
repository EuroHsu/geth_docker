FROM ubuntu:18.04
RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt update && \
    apt install -y ethereum && \
    mkdir chaindata