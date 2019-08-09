FROM gitpod/workspace-full-vnc:latest

USER root
# install dependencies
#update chrome
RUN apt-get update \
    && apt-get install -y firefox matchbox twm \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Give back control
USER root