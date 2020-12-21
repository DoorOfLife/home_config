#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar bar1 2>&1 | tee -a /var/log/polybar1.log & disown

echo "Bar(s) launched..."

