FROM ubuntu
# SHELL ["/bin/sh", "-c"]
RUN apt update
# ARG $usr=username
# RUN adduser --uid 1500 --gid 1500 ${$usr}
# RUN usermod -aG sudo ${$usr}
# ENV $ENV_KEY="value"
USER ubuntu
WORKDIR /home/ubuntu
