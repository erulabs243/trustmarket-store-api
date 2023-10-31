#!/bin/sh
echo "Install dependencies"

DIR="node_modules"
if [ -d "$DIR" ]; then
  rm -r node_modules  
fi

yarn build:prod
yarn start --port 9000

echo "Everything is okay"
