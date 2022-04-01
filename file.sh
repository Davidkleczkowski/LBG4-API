#!/bin/bash
#CD ~/LBG4-APP
#
#
# test application

npm install
npm test 
# build image
docker build -t davenodeimage:1 .
#run image
docker run --name davenodecontainer -d -p 5000:5000 --rm davenodeimage:1 .
#
#
# remove any untagged images
docker system prune -a -f
