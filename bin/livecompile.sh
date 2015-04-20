#!/usr/bin/env bash

./node_modules/.bin/static -H '{"Cache-Control": "no-cache, must-revalidate"}' --port 2016 -a 0.0.0.0 &
./node_modules/.bin/nodemon --exec "sh $(pwd)/bin/build.sh" -e jade,styl,js