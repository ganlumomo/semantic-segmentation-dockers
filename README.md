# semantic-segmentation-dockers

## Install Docker CE

[https://docs.docker.com/install/linux/docker-ce/ubuntu/](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Install nvidia-docker 2.0

[https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))

## Manage Docker as a non-root user

[https://docs.docker.com/install/linux/linux-postinstall/](https://docs.docker.com/install/linux/linux-postinstall/)

## Download a Docker image

### Tensorflow

[https://www.tensorflow.org/install/docker#download_a_tensorflow_docker_image](https://www.tensorflow.org/install/docker#download_a_tensorflow_docker_image)

### Caffe

[https://github.com/BVLC/caffe/tree/master/docker](https://github.com/BVLC/caffe/tree/master/docker)

`nvidia-docker run -ti bvlc/caffe:gpu caffe --version`

## Create a container

`git clone https://github.com/ganlumomo/semantic-segmentation-dockers.git`

`cd semantic-segmentation-dockers`

(might need to change FROM in Dockerfile according to the docker image)

`docker build --tag ganlu/v1 .`

`bash run_docker.bash [container_name]`

## Open the container

`docker ps -a`

`docker exec -it [container_name] /bin/bash`
