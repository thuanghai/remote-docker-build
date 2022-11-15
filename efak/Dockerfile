#FROM openjdk:8-jdk-alpine
FROM openjdk:8-slim-bullseye

ENV EFAK_VERSION=3.0.2

RUN apt-get install curl

RUN cd /opt && curl -O https://github.com/smartloli/kafka-eagle-bin/archive/v${EFAK_VERSION}.tar.gz && \
    tar -xzf v${EFAK_VERSION}.tar.gz && \
    tar -xzf kafka-eagle-bin-${EFAK_VERSION}/efak-web-${EFAK_VERSION}-bin.tar.gz && \
    mv efak-web-${EFAK_VERSION} efak && \
    rm -rf kafka-eagle-bin-${EFAK_VERSION} *.tar.gz

WORKDIR /opt/efak

ENV KE_HOME=/opt/efak
ENV PATH $KE_HOME/bin:$PATH

ADD entrypoint.sh /usr/bin/
ADD healthcheck.sh /usr/bin/

EXPOSE 8048

HEALTHCHECK --start-period=30s --retries=1 --interval=10s --timeout=5s CMD sh /usr/bin/healthcheck.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
