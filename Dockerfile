#
# Sample Dockerfile for the New Relic Linux Server Monitor. This is intended
# to be used from the extracted tar file directory of a given LSM release.
# Therefore, it is extremely simple as it does not need to download anything.
#
# All configuration is handled by environment variables, and requires at least
# version 2.1.0.117 or later of the LSM agent, which is when the -E flag and
# support for environment variables was added.
#

FROM scratch
MAINTAINER New Relic <support@newrelic.com>

# The following line requires Docker 1.6 but is ignored by earlier versions,
# albeit with a warning.
LABEL Description="New Relic Linux Server Monitor" vendor="New Relic Inc."

ADD daemon/nrsysmond.x64 /usr/sbin/nrsysmond

ENV NEW_RELIC_LICENSE_KEY 
ENV NEW_RELIC_DEBUG verbose
CMD /usr/sbin/nrsysmond -F -E -l /dev/stdout
