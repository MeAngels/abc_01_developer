docker ps # docker process running and ports
    [-a]

docker init

# Generate image
docker build [$options] $path
    $path = .
    -t $image_name_tag # --tag $user/$app
    -f $dockerfile

docker images
docker image ls

docker history $image

docker inspect $anything # volume, network, container, image
