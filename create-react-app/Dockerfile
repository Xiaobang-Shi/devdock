FROM alpine:latest

LABEL maintainer="Xiaobang Shi <xiaobang.shi@outlook.com>"

# If you're in China, or you need to change sources, set CHANGE_SOURCE to true.

ARG CHANGE_SOURCE=true
RUN if [ ${CHANGE_SOURCE} = true ]; then \
  # Change application source from dl-cdn.alpinelinux.org to aliyun source.
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
  ;fi

RUN apk update && \
  apk add --no-cache nodejs npm

RUN if [ ${CHANGE_SOURCE} = true ]; then \
  # Change the default npm source to taobao source.
  npm config set registry https://registry.npm.taobao.org && \
  npm config get registry \
  ;fi

RUN npm install -g create-react-app

RUN mkdir /home/workspace
WORKDIR /home/workspace

EXPOSE 8080
