#!/bin/bash
# Script: pi-temp.sh
# Purpose: Display GPU and CPU temperature of Raspberry Pi 4
# Author: TheSybr
# License: The Unlicense
# -------------------------------------------------------
cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "-------------------------------------------"
echo "GPU => $(vcgencmd measure_temp)"
echo "CPU => temp=$((cpu/1000))'C"
