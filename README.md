# newrelic-docker-host

## Collect analytics from the *host* where this container is deployed.

The purpose of this image is to monitor sibling Docker containers on a host using New Relic in much the same way as if the monitoring software was deployed directly on the host. It should work fine on any Docker host.

Now in New Relic you should see:

##Caveats

At the moment we can't map /proc on Tutum so Newrelic will show child process information, however it will correctly show hosted container information. Watch this space.

