# semantic-segmentation-dockers

## Install Docker CE

[https://docs.docker.com/install/linux/docker-ce/ubuntu/](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Install nvidia-docker 2.0

[https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))

## Manage Docker as a non-root user

[https://docs.docker.com/install/linux/linux-postinstall/](https://docs.docker.com/install/linux/linux-postinstall/)

## Download an official Docker image

### PyTorch

[https://ngc.nvidia.com/catalog/containers/nvidia:pytorch](https://ngc.nvidia.com/catalog/containers/nvidia:pytorch)

### Tensorflow

[https://www.tensorflow.org/install/docker#download_a_tensorflow_docker_image](https://www.tensorflow.org/install/docker#download_a_tensorflow_docker_image)

### Caffe

[https://github.com/BVLC/caffe/tree/master/docker](https://github.com/BVLC/caffe/tree/master/docker)

`nvidia-docker run -ti bvlc/caffe:gpu caffe --version`

## Build a customized Docker image (optional)

`git clone https://github.com/ganlumomo/semantic-segmentation-dockers.git`

`cd semantic-segmentation-dockers`

(might need to change FROM in Dockerfile according to the official docker image)

`docker build --tag [customized_image_name] .`

`docker build --t [customized_image_name] -f Dockerfile .`

## Create a container

(might need to change the last line in run_docker.bash to [image_name:tag])

`bash run_docker.bash [container_name]`

## Open the container

`docker ps -a`

`docker start [container_name]`

`docker exec -it [container_name] /bin/bash`
