ARG SDC_VERSION=3.9.1
FROM streamsets/datacollector:${SDC_VERSION}

#ARG SDC_LIBS="streamsets-datacollector-apache-kafka_2_2-lib,streamsets-datacollector-apache-kafka_2_3-lib"
ARG SDC_LIBS="streamsets-datacollector-apache-kafka_2_3-lib"
RUN "${SDC_DIST}/bin/streamsets" stagelibs -install="${SDC_LIBS}"
