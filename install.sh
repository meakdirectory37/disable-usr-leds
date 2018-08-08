#!/bin/bash
sudo g++ -o /usr/bin/turn-off-usr-leds main.cpp
mv turn-off-usr-leds.service /lib/systemd/system/
systemctl start turn-off-usr-leds.service
systemctl enable turn-off-usr-leds.service
