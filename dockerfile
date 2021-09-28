FROM golang:1.16-alpine as builder

ENV ETHEREUM_VERSION=v1.10.8
ENV ETHEREUM_REPO=/go-ethereum

RUN apk update && \
    apk upgrade && \
    apk add --no-cache make gcc musl-dev linux-headers git

RUN git clone -b $ETHEREUM_VERSION https://github.com/ethereum/go-ethereum.git $ETHEREUM_REPO

RUN cd $ETHEREUM_REPO && \
    make geth && \
    strip $ETHEREUM_REPO/build/bin/geth

FROM alpine:latest

ENV ETHEREUM_REPO=/go-ethereum

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash && \
    mkdir chaindata

COPY --from=builder $ETHEREUM_REPO/build/bin/geth /usr/local/bin/
