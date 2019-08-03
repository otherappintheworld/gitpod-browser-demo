FROM gitpod/workspace-full-vnc:latest

# install dependencies
#update chrome
RUN apt-get update \
    && apt-get install -y firefox matchbox twm \
    &&  sudo apt-get install -y chromium-browser matchbox twm \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
