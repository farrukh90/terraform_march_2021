#!/bin/bash
curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh
# sudo yum update -y,
sudo apt-get install apache2 -y,
sudo systemctl start apache2,
sudo apt-get install telnet -y