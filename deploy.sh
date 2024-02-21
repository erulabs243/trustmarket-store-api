#!/bin/sh
echo "Install dependencies"

# DIR="node_modules"
# if [ -d "$DIR" ]; then
#   rm -r node_modules  
# fi

# bun build:prod

# Start pm2
pm2 restart ecosystem.config.js --env production

echo "Everything is okay"
