FROM node:alpine

LABEL maintainer="Xiaobang Shi <xiaobang.shi@outlook.com>"

RUN mkdir /workspace

WORKDIR /workspace
# Use taobao source
RUN npm config set registry https://registry.npm.taobao.org && \
  npm install -g @vue/cli

EXPOSE 8080
