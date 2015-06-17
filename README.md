# newrelic-docker-host
## Collect analytics from the *host* where this container is deployed.

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

Built from instructions here: https://discuss.newrelic.com/t/how-to-try-out-the-docker-beta/19478/8

The purpose of this image is to monitor sibling Docker containers on a host using New Relic in much the same way as if the monitoring software was deployed directly on the host. There is a definite bias towards using Tutum (an excellent commercial Docker hosting company) here but it should work fine on any Docker host. If you would like to try this out just click on the 'Deploy to Tutum' button above and it will be deployed to all your Tutum nodes. That's it!

If you use Tutum you can also manually create a stack using `tutum.yml` (with your key edited in). 

To run locally add your New Relic license key to the docker-compose file (don't check it in!) and run docker-compose as normal.

Now in New Relic you should see:

![Screenshot of New Relic](https://photos-6.dropbox.com/t/2/AAC9ozKBK7QcVRmLsG3hIJqrrA9NsDxRzX84ZkpFrEHj5w/12/59828010/png/32x32/1/1434492000/0/2/Screenshot%202015-06-16%2021.14.21.png/CKrOwxwgASACIAMgBCAFIAYgBygBKAI/tiCDfUVCpn2qKPA9zI5FpUiGfdd1kSF9CEjVFq0N3no?size=1600x1200&size_mode=2)

##Caveats

At the moment we can't map /proc on Tutum so Newrelic will show child process information, however it will correctly show hosted container information. Watch this space.

