#!/bin/bash

# Script to stop the Nginx web server

echo "Attempting to stop Nginx..."
sudo systemctl stop nginx

# Check if it stopped successfully
if systemctl is-active --quiet nginx; then
  echo "Failed to stop Nginx. Check status for errors."
  sudo systemctl status nginx --no-pager
else
  echo "Nginx stopped successfully."
fi
