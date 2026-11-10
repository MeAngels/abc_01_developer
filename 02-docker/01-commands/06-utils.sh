docker rm $(docker ps -f status-exited -q) # remove stopped containers

docker run node bash -c "npm i && npm run dev"