FROM node:alpine

LABEL maintainer="Xiaobang Shi <xiaobang.shi@outlook.com>"

RUN mkdir /workspace

WORKDIR /workspace

# If you're in China, or you need to change sources, set CHANGE_SOURCE to true.

ARG CHANGE_SOURCE=false
RUN if [ ${CHANGE_SOURCE} = true ]; then \
  # Change the default npm source to taobao source
  npm config set registry https://registry.npm.taobao.org \
  ;fi

RUN npm install -g @vue/cli

EXPOSE 8080
