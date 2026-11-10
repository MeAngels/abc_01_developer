# docker run -it --rm --name mycontainer -v mycontainer:/workspaces -p 8080:3000 node

docker run $image

docker run $command
docker run -i -t ubuntu /bin/bash
+ docker pull ubuntu
+ docker container create
# 1. `docker pull ubuntu`, $image = ubuntu
# 2. `docker container create`
# 3. Allocate memory
# 4. Define ports
# 5. start container and run `/bin/bash`
# -i: interactive
# $image = ubuntu
# run /bin/bash

--name $name_container # --name=$nameContainer
-d # --detach
-i # interactive
-t # terminal
-p $port_host:$port_container # --publish $host:$container
-P # publish all ports
--env-file $dot_env
-v $path_host:$path_container # volume: shared folder
--mount type=bind,source=/HOST/PATH,target=/CONTAINER/PATH,readonly # type=volume|bind, source=$volume
--link $hostname
--rm # remove when stopped exist
--network $network

--memory="512m"
--cpus="0.5"



docker (start|stop) $id

docker exec -it $container bash
