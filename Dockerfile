FROM nvidia/cuda:8.0-cudnn5-devel
# start with the nvidia container for cuda 8 with cudnn 5

# forked from https://github.com/garyfeng/DockerFiles-public
LABEL maintainer "ImmortalTurtle <immortalsuperturtle@gmail.com>"

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget unzip lsof apt-utils lsb-core -y
RUN apt-get install libatlas-base-dev -y
RUN apt-get install libopencv-dev python-opencv python-pip -y

RUN apt-get update -y & apt-get install -y  nano sudo cmake --fix-missing
RUN wget https://github.com/CMU-Perceptual-Computing-Lab/openpose/archive/master.zip; \
unzip master.zip; rm master.zip

WORKDIR openpose-master

RUN ./ubuntu/install_cmake.sh
RUN mkdir -p build
WORKDIR build
RUN cmake ..
RUN make -j`nproc`

WORKDIR /openpose-master

