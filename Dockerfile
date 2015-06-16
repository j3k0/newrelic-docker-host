#
# Sample Dockerfile for the New Relic Linux Server Monitor. This is intended
# to be used from the extracted tar file directory of a given LSM release.
# Therefore, it is extremely simple as it does not need to download anything.
#
# All configuration is handled by environment variables, and requires at least
# version 2.1.0.117 or later of the LSM agent, which is when the -E flag and
# support for environment variables was added.
#

FROM ubuntu
MAINTAINER New Relic <support@newrelic.com>

# The following line requires Docker 1.6 but is ignored by earlier versions,
# albeit with a warning.
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
