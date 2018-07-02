# docker-openpose

Docker Image for [OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose/). Forked from https://github.com/garyfeng/DockerFiles-public. 

### Pull

docker pull immortalturtle/docker-openpose

### Run

Mount folder with data to docker

nvidia-docker run -v /folder/with/data:/data -it immortalturtle/openpose-docker:latest bash

### Test

It's important to write `--display 0`

./build/examples/openpose/openpose.bin --video examples/media/video.avi --write_json output/ --display 0 --render_pose 0
