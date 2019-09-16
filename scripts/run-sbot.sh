#!/bin/bash
echo Starting ssb-server: $HOST
ssb-server start --host $HOST

echo Oops ssb-server crashed.

while true; do
  sleep 5
done


