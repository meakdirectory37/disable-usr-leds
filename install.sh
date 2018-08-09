#!/bin/bash
sudo g++ -o /usr/bin/turn-off-usr-leds main.cpp
sudo mv turn-off-usr-leds.service /lib/systemd/system/
sudo systemctl start turn-off-usr-leds.service
sudo systemctl enable turn-off-usr-leds.service
