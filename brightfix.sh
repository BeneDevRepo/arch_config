#!/bin/bash
while [ ! -e "/sys/class/backlight/amdgpu_bl0/subsystem/amdgpu_bl0/brightness" ]
do
	sleep 1s
done
chown bene /sys/class/backlight/amdgpu_bl0/subsystem/amdgpu_bl0/brightness
