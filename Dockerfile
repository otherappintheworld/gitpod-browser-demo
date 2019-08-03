FROM gitpod/workspace-full-vnc:latest

# install dependencies
#update chrome
RUN apt-get update \
    && apt-get install -y firefox matchbox twm \
    &&   wget -O ~/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && \ sudo dpkg -i ~/chrome.deb \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Give back control
USER root

