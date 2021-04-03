FROM ubuntu:latest

LABEL maintainer="Xiaobang Shi <xiaobang.shi@outlook.com>"

# If you're in China, or you need to change sources, set CHANGE_SOURCE to true.

ARG CHANGE_SOURCE=true
RUN if [ ${CHANGE_SOURCE} = true ]; then \
  # Change application source from archive.ubuntu.com to aliyun source
  sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
  sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
  sed -i "s/archive.canonical.com/mirrors.aliyun.com/g" /etc/apt/sources.list \
  ;fi

RUN apt-get update && \
  DEBIAN_FRONTEND="noninteractive"\
  apt-get install -y \
  build-essential \
  gdb && \
  apt-get autoclean && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /home/workspace/.vscode

COPY ./vscode/*.json /home/workspace/.vscode
COPY ./vscode/*.code-workspace /home/workspace/

# RUN gcc --version && g++ --version && gdb --versiond

WORKDIR /home/workspace
