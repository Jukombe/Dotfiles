#!/bin/bash

status=$(mullvad status)

if echo "$status" | grep -q "Connected"; then
  location=$(echo "$status" | grep "Visible location" | awk -F'Visible location:' '{print $2}' | awk -F'.' '{print $1}' | xargs)

  if [ -n "$location" ]; then
    echo "$location"
  fi
fi
