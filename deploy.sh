#!/bin/sh
echo "Install dependencies"

DIR="node_modules"
if [ -d "$DIR" ]; then
  rm -r node_modules  
fi

yarn build:prod

echo "Everything is okay"
