FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y openjdk-8-jre && \
    apt-get install -y graphviz && \
    apt-get install -y git && \
    apt-get install -y unzip

# RUN wget -O plantuml.jar https://sourceforge.net/projects/plantuml/files/plantuml.1.2020.15.jar/download

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "sh", "-c", "/entrypoint.sh" ]
