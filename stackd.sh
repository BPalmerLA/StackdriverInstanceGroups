#!/bin/bash
sudo apt-get update \
sudo apt-get install apache2 \

################ Installing Stackdriver Monitoriing Agent
curl -sSO https://dl.google.com/cloudagents/install-monitoring-agent.sh \ 
sudo bash install-monitoring-agent.sh \ 

############# Configuring Apache for the Monitoring Agent
curl http://local-stackdriver-agent.stackdriver.com:80/server-status?auto \
(cd /opt/stackdriver/collectd/etc/collectd.d/ && sudo curl -O https://raw.githubusercontent.com/Stackdriver/stackdriver-agent-service-configs/master/etc/collectd.d/apache.conf) \
sudo service stackdriver-agent restart
