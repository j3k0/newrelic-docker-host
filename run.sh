echo "license_key=$NEW_RELIC_LICENSE_KEY" > /etc/nrsysmond.cfg
echo "labels=$NEW_RELIC_LABELS" >> /etc/nrsysmond.cfg
echo "hostname=${NEW_RELIC_HOST:-${TUTUM_SERVICE_HOSTNAME}}"
cat nrsysmond.cfg >> /etc/nrsysmond.cfg
/usr/sbin/nrsysmond -c /etc/nrsysmond.cfg  -l /dev/stdout -f
