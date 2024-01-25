#!/bin/sh
echo "Install dependencies"

DIR="node_modules"
if [ -d "$DIR" ]; then
  rm -r node_modules  
fi

bun build:prod
pm2 stop --silent trustmarket
pm2 delete --silent trustmarket

pm2 start "bun start --port 7000" --name "trustmarket"

echo "Everything is okay"
