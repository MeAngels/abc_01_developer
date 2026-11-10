# Docker

+ [docker](https://www.docker.com/)

## order

1. Dockerfile
2. Image: an image is a read-only template
3. Container: a container is a runnable instance of an image

## Images

* [DockerOfficialImages](https://hub.docker.com/search?badges=official)

+ ubuntu
+ debian
+ alpine

+ node
+ python
+ java
+ openjdk
+ container-registry.oracle.com/java/jdk
+ eclipse-temurin

+ mcr.microsoft.com/mssql/server
+ mysql
+ postgres
+ mongo

+ phpmyadmin
+ nginx

+ https://hub.docker.com/r/ubuntu/node
+ php:apache
    + volume: /var/www/html
+ regis

## Paths

\\wsl.localhost\docker-desktop\mnt\docker-desktop-disk\data\docker\volumes\

## Difference RUN, CMD, ENTRYPOINT

+ RUN: execute when building image, layers;
+ CMD: default command if user do not pass any command `docker run -it $image $command`;
+ ENTRYPOINT: executable and others flags will be considered arguments. Use -- to override;
