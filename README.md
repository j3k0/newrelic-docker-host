# newrelic-docker-host

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

If you use Tutum then create a stack using `stack.yml` (with your key edited in). That's it!

Now in New Relic you should see:

![Screenshot of New Relic](https://www.dropbox.com/s/k6s5lzr0j4pvdmr/Screenshot%202015-06-16%2021.14.21.png?dl=0)

##Caveats

At the moment we can't map /proc on Tutum so Newrelic will show child process information, however it will correctly show hosted container information. Watch this space.

