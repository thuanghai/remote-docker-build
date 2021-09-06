ARG SDC_VERSION=4.1.0
FROM docker.io/streamsets/datacollector:${SDC_VERSION}

#ARG SDC_LIBS="streamsets-datacollector-apache-kafka_2_2-lib,streamsets-datacollector-apache-kafka_2_3-lib"
ARG SDC_LIBS="\
streamsets-datacollector-apache-kafka_2_3-lib,\
streamsets-datacollector-apache-kafka_2_8-lib,\
streamsets-datacollector-elasticsearch_7-lib,\
streamsets-datacollector-jdbc-lib"
RUN "${SDC_DIST}/bin/streamsets" stagelibs -install="${SDC_LIBS}"
