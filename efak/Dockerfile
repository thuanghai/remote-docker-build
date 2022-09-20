FROM openjdk:8-jdk-alpine

ENV EFAK_VERSION=3.0.1
ENV KE_HOME=/opt/efak

RUN cd /opt && curl -O  https://github.com/smartloli/kafka-eagle-bin/archive/v${EFAK_VERSION}.tar.gz && \
    tar -xzvf v${EFAK_VERSION}.tar.gz && \
    tar -xzf kafka-eagle-bin-${EFAK_VERSION}/efak-web-${EFAK_VERSION}-bin.tar.gz && \
    rm -rf kafka-eagle-bin-* v${EFAK_VERSION}.tar.gz && \
    mv efak-web-* efak

WORKDIR /opt/efak

ADD entrypoint.sh /usr/bin

EXPOSE 8048

ENTRYPOINT ["entrypoint.sh"]
