#!/usr/bin/env bash

sudo apt install python3-usb gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-tools v4l-utils

sudo cp /home/user/src/robot2/ros-workspace/src/ps5eye/91-ps4eye.rules /etc/udev/rules.d
sudo sed -i -e "s|INIT_SCRIPT|/home/user/src/robot2/ros-workspace/src/ps5eye/script/ps4eye_init.py|g" /etc/udev/rules.d/91-ps4eye.rules

sudo systemctl restart systemd-udevd
