FROM openjdk:16-slim

# If you're in China, or you need to change sources, set CHANGE_SOURCE to true.

ARG CHANGE_SOURCE=true
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    # Change application source from deb.debian.org to tsinghua source
    sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/security-cdn.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list \
    ;fi

ARG GRADLE_VERSION=6.8.3
RUN apt-get update && \
    apt-get install -y \
    wget \
    unzip && \
    wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -P /tmp && \
    unzip -d /opt/gradle /tmp/gradle-${GRADLE_VERSION}-bin.zip && \
    ln -s /opt/gradle/gradle-${GRADLE_VERSION} /opt/gradle/latest && \
    # clean
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV GRADLE_HOME=/opt/gradle/latest
ENV PATH="${GRADLE_HOME}/bin:${PATH}"

COPY ./init.gradle /root/.gradle/

RUN mkdir -p /home/workspace
WORKDIR /home/workspace

EXPOSE 8080
