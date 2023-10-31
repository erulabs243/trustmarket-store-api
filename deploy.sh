#!/bin/sh
echo "Install dependencies"

DIR="node_modules"
if [ -d "$DIR" ]; then
  rm -r node_modules  
fi

yarn build:prod
pm2 start "yarn start" --name trustmarket

echo "Everything is okay"
