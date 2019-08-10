FROM gitpod/workspace-full:latest

USER root
# install dependencies
#update chrome
RUN apt-get update \
    wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc \
    apt-key add TeamViewer2017.asc \
    apt-get install teamviewer \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Give back control
USER root