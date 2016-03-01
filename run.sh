echo -e "license_key=$NEW_RELIC_LICENSE_KEY\n" > /etc/nrsysmond.cfg
echo -e "labels=${NEW_RELIC_LABELS:-host:${HOSTNAME:-unknown}}\n" >> /etc/nrsysmond.cfg
echo -e "hostname=${NEW_RELIC_HOSTNAME:-${HOSTNAME:-unknown}}\n" >> /etc/nrsysmond.cfg
echo -e "docker=/var/run/docker.sock\n\n" >> /etc/nrsysmond.cfg
cat nrsysmond.cfg >> /etc/nrsysmond.cfg
/usr/sbin/nrsysmond -c /etc/nrsysmond.cfg  -l /dev/stdout -f
