#!/bin/sh
echo "Install dependencies"

DIR="node_modules"
if [ -d "$DIR" ]; then
  rm -r node_modules  
fi

bun build:prod
# pm2 stop --silent trustmarket
# pm2 delete --silent trustmarket

# Start pm2
pm2 start "bun start" --watch --name "trustmarket"

echo "Everything is okay"
