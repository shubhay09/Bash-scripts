#!/bin/bash
touch /etc/cron.d/automation
sudo crontab -l > /etc/cron.d/automation
sudo echo "0 0 * * * sudo /home/ubuntu/Automation_Project/auto.sh" >> Automation
sudo crontab /etc/cron.d/automation
