#!/bin/bash

# Script to start the Nginx web server

echo "Attempting to start Nginx..."
sudo systemctl start nginx

# Check if it started successfully
if systemctl is-active --quiet nginx; then
  echo "Nginx started successfully."
else
  echo "Failed to start Nginx. Check status for errors."
  sudo systemctl status nginx --no-pager # --no-pager shows full status without needing to scroll
fi
