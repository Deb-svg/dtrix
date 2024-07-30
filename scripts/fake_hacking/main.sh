#!/bin/bash

# Fake Hacking Script

echo "Starting hacking..."
sleep 2

echo "Connecting to target..."
sleep 2
echo "Connection established."
sleep 1

echo "Bypassing firewall..."
for i in $(seq 1 10); do
  echo -ne "["
  for j in $(seq 1 $i); do echo -ne "#"; done
  for j in $(seq $i 10); do echo -ne "."; done
  echo -ne "] $((i * 10))%\r"
  sleep 0.5
done
echo ""

echo "Firewall bypassed."
sleep 1

echo "Accessing database..."
sleep 2
echo "Database accessed."
sleep 1

echo "Downloading data..."
for i in $(seq 1 20); do
  echo -ne "Downloading: $((i * 5))%\r"
  sleep 0.3
done
echo ""

echo "Data downloaded successfully."
sleep 1

echo "hacking complete."
