# newrelic-docker-host
## Collect analytics from the *host* where this container is deployed.

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

Built from instructions here: https://discuss.newrelic.com/t/how-to-try-out-the-docker-beta/19478/8

To run locally add your New Relic license key to the docker-compose file (don't check it in!) and run docker-compose as normal.

```
newrelic:
  build: .
  privileged: true
  environment:
    - NEW_RELIC_LICENSE_KEY=<YOUR-KEY>
  volumes:
    - '/var/run/docker.sock:/var/run/docker.sock'
    - '/dev:/dev'
    - '/sys:/sys'
    - '/proc:/proc'
```    

If you use Tutum then create a stack using `tutum.yml` (with your key edited in). That's it!

Now in New Relic you should see:

![Screenshot of New Relic](https://photos-6.dropbox.com/t/2/AAC9ozKBK7QcVRmLsG3hIJqrrA9NsDxRzX84ZkpFrEHj5w/12/59828010/png/32x32/1/1434492000/0/2/Screenshot%202015-06-16%2021.14.21.png/CKrOwxwgASACIAMgBCAFIAYgBygBKAI/tiCDfUVCpn2qKPA9zI5FpUiGfdd1kSF9CEjVFq0N3no?size=1600x1200&size_mode=2)

##Caveats

At the moment we can't map /proc on Tutum so Newrelic will show child process information, however it will correctly show hosted container information. Watch this space.

