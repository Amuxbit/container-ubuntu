# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    docker-ubuntu
# tag:      latest
# name:     amuxbit/docker-ubuntu
# version:  1.0.0
# repo:     https://github.com/amuxbit/docker-ubuntu
# how-to:   docker build --force-rm -t amuxbit/docker-ubuntu .
# run:      docker run -t -i docker-ubuntu bash
# requires: ubuntu
# authors:  jason.giedymin@gmail.com
# ------------------------------------------------------

FROM ubuntu:latest
MAINTAINER amuxbit

# -----> Env
ENV WORKDIR /tmp/build/docker-ubuntu
WORKDIR /tmp/build/docker-ubuntu

# -----> Add assets
ADD ./ubuntu $WORKDIR/ubuntu

# -----> System
RUN sudo apt-get update -y
RUN sudo apt-get install -y git

# -----> Lib
RUN git clone https://github.com/Amuxbit/container-automation-lib.git lib

# -----> Execute
RUN chmod +x $WORKDIR/ubuntu
RUN $WORKDIR/ubuntu

# -----> Cleanup
WORKDIR /
RUN rm -R /tmp/build
