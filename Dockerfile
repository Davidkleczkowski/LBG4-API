FROM node:17
#ECHO Console.log(`node installed`)

WORKDIR /container1app
#Console.log(`created working directory in the container`) 

COPY  . .
#app.js start.js package.json public /container1app/
# app.js start.js and others evetually /container1app
#Console.log( "Installed files on the container"


RUN npm install
#Console.log( "Installed  dependancies on the container")

ENV PORT=5000
#Console.log( "set port  on the container"

ENTRYPOINT ["npm","start"]
#Console.log( "entry point set"
