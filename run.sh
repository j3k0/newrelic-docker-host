echo "license_key=$NEW_RELIC_LICENSE_KEY" > /etc/nrsysmond.cfg
echo "labels=${NEW_RELIC_LABELS:-host:${TUTUM_NODE_HOSTNAME:-unknown}}" >> /etc/nrsysmond.cfg
echo "hostname=${NEW_RELIC_HOSTNAME:-${TUTUM_NODE_HOSTNAME}}">> /etc/nrsysmond.cfg
cat nrsysmond.cfg >> /etc/nrsysmond.cfg
/usr/sbin/nrsysmond -c /etc/nrsysmond.cfg  -l /dev/stdout -f
