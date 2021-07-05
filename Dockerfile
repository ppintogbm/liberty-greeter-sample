FROM openliberty/open-liberty:full-java11-openj9-ubi

ARG VERSION=1.0
ARG REVISION=SNAPSHOT

USER root

COPY --chown=1001:0 src/main/liberty/config/server.xml /config
COPY --chown=1001:0 target/*.war /config/apps

USER 1001