FROM ubuntu
MAINTAINER hello@neilellis.me

LABEL Description="New Relic Linux Server Monitor" vendor="New Relic Inc."
COPY daemon/nrsysmond.x64 /usr/sbin/nrsysmond
RUN chmod 755 /usr/sbin/nrsysmond
RUN ls -la /usr/sbin/*
ENV NEW_RELIC_LICENSE_KEY changeme
ENV NEW_RELIC_DEBUG verbose
COPY nrsysmond.cfg nrsysmond.cfg
COPY scripts/nrsysmond-config nrsysmond-config
RUN chmod 755 nrsysmond-config 
ADD run.sh run.sh
RUN chmod 755 run.sh
CMD ./run.sh
