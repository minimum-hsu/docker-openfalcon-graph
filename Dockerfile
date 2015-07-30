FROM ubuntu:14.04.2

MAINTAINER minimum@cepave.com

ENV WORKDIR=/home/graph PACKDIR=/package PACKFILE=falcon-graph.tar.gz CONFIGDIR=/config CONFIGFILE=cfg.json

# Volume
VOLUME $CONFIGDIR $WORKDIR $PACKDIR

# Install Open-Falcon Graph Component
COPY $CONFIGFILE $CONFIGDIR/
COPY $PACKFILE $PACKDIR/

WORKDIR /root
COPY run.sh ./
RUN chmod +x run.sh

# Start
CMD ["./run.sh"]
