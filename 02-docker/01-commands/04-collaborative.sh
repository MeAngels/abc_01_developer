docker save $image > $file.tar # image
docker load

docker save --output $file.tar $image:tag
docker load --input $file.tar

docker export # container
docker import

# ##################################################

docker run --name=$containername -ti ubuntu
apt update && apt install -y nodejs
docker container commit -m "add node" $containername $imageName_nodeBase
    -c "CMD node app.js"
docker image history $image
docker run node-base node -e "console.log('Hello World')"
Docker rm -f base-container
