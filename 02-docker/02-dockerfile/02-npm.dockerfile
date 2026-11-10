FROM node:latest
WORKDIR /projects/theproject
# COPY package.json .
# RUN npm install
COPY . .
# EXPOSE 3000
EXPOSE 80
# CMD [ "npm", "run", "dev" ]
# CMD [ "node", "server.js" ]
ENTRYPOINT [ "node", "server.js" ]

# server.js

# const http = require("node:http");
# const server = http.createServer((req,res)=>{res.statusCode=200;res.setHeader("Content-type","text/plain");res.end("Server is working!");}).listen(80, ()=>{console.log("Server running")});
