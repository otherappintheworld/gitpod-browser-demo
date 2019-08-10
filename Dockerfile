FROM gitpod/workspace-full:latest

USER root
# install dependencies
#update chrome
RUN wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc \
    && apt-key add TeamViewer2017.asc \
    # && sh -c 'echo "deb http://linux.teamviewer.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list' \
    # && sh -c 'echo "deb http://linux.teamviewer.com/deb preview main" >> /etc/apt/sources.list.d/teamviewer.list' \
    && apt-get update \
    && apt-get install teamviewer \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Give back control
USER root