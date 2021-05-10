#!/bin/bash
curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh
# sudo yum update -y,
sudo yum install httpd -y,
sudo systemctl start httpd,
sudo yum install telnet -y