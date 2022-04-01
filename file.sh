#!/bin/bash
CD ~/LBG4-APP
#let VMPORT=5000
#let CPORT=5000
# test application
echo "Installing Dependancies"
sleep 2

npm install
npm test 
# build image
docker build -t davenodeimage:1 .
#run image
docker run --name davenodecontainer -d -p 5000:5000 --rm davenodeimage:1 .
#let VMPORTADD = VMPORT+1
#let  CPORTADD = CPORT+1
# remove any untagged images
docker system prune -a -f
