docker network
    create $network
        --subnet=$ip/$mask
    connect|disconnect $network $container

docker compose up|down
    -d
    --build
    --volumes

docker compose run $service

docker compose
    watch
    logs
    ps
