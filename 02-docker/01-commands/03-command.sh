docker pull/push

docker rm $container
docker container --help
docker container run $options $image
docker container rm $(docker container ls -a -q)

docker image rm $image # docker rmi $tag
docker volume
    inspect $volume
    create $volume
