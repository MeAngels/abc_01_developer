# https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/

FROM '$image[:$tag]'
# FROM '$image[:$tag]' AS $TAG

# Set the working directory in the container
WORKDIR '$path'
# WORKDIR /usr/local/app

# copy the local server script to the container
COPY '$hostPath' '$imagePath'
# ADD $remote $image

# Shell form
# RUN $command

# Setup na app user so the container doesn't run as the root user
RUN useradd '$appuser'
USER '$appuser'

EXPOSE 3000

# Command to run the server
CMD ["echo", "My Container Running"]

VOLUME [ "/var/local", "/workspaces"]

# docker build -t $image .
# docker run -it --rm --name $container $image
