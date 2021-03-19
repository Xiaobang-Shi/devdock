FROM node:latest

LABEL \
    description="A Vue development environment for Docker." \
    version=0.1 \
    author=Bang \
    maintainer="Xiaobang Shi <Xiaobang-Shi@outlook.com>" \
    reference="https://github.com/Xiaobang-Shi/vuedock"
RUN \
    #Use taobao mirror
    npm config set registry https://registry.npm.taobao.org \
    && \
    npm install -g @vue/cli
RUN \
    #Create a workspace folder
    mkdir /workspace

WORKDIR \
    #Specify workspace folder
    /workspace
