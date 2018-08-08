#!/bin/bash
g++ -o turn-off-usr-leds main.cpp
sudo mv turn-off-usr-leds /usr/bin/
mv turn-off-usr-leds.service /lib/systemd/system/
systemctl start turn-off-usr-leds.service
systemctl enable turn-off-usr-leds.service
