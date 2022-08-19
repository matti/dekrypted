FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  curl screen

RUN curl -Lsf -o /tmp/dekrypted-miner.tar.gz https://github.com/De-Crypted/dcrptd-miner/releases/download/2.0/dcrptd-miner-linux-x64-2.0.tar.gz

WORKDIR /root

ENTRYPOINT [ "/root/dekrypted" ]
