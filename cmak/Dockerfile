FROM openjdk:11-jre-slim-buster

ARG CMAK_VERSION="3.0.0.6"

RUN set -eux \
 && apt-get update && apt-get install -y gosu wget unzip \
 && apt-get clean && rm -rf /var/lib/apt/lists/* \
 && gosu nobody true \
 && wget https://github.com/yahoo/CMAK/releases/download/${CMAK_VERSION}/cmak-${CMAK_VERSION}.zip -O /tmp/cmak.zip \
 && unzip /tmp/cmak.zip -d /opt \
 && mv /opt/cmak-${CMAK_VERSION} /opt/cmak \
 && rm -f /tmp/cmak.zip \
 && groupadd -r --gid 1000 cmak \
 && useradd -r -g cmak --uid 1000 cmak \
 && chown -R cmak:cmak /opt/cmak

ADD application.conf /opt/cmak/conf

VOLUME /opt/cmak/conf

ENV JAVA_OPTS=-XX:MaxRAMPercentage=80

USER cmak:cmak

EXPOSE 9000

WORKDIR /opt/cmak

ENTRYPOINT ["/opt/cmak/bin/cmak", "-Dconfig.file=/opt/cmak/conf/application.conf"]
#ENTRYPOINT ["/opt/cmak/bin/cmak"]
