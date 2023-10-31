#!/bin/sh
echo "Install dependencies"

rm -r node_modules
yarn build:prod

echo "Everything is okay"

