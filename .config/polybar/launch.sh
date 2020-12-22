#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
polybar mainbar 2>&1 | tee -a /var/log/mainbar.log & disown

echo "Bar(s) launched..."

