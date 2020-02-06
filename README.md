# semantic-segmentation-dockers

## Install Docker CE

[https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce](https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce)

## Install nvidia-docker 2.0

[https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))

## Manage Docker as a non-root user

[https://docs.docker.com/install/linux/linux-postinstall/](https://docs.docker.com/install/linux/linux-postinstall/)

## Download a TensorFlow Docker image

[https://www.tensorflow.org/install/docker#download_a_tensorflow_docker_image](https://www.tensorflow.org/install/docker#download_a_tensorflow_docker_image)

## Create a container

`git clone git@github.com:UMich-BipedLab/docker_images.git`

`cd semantic_mapping_melodic`

`docker build --tag umrobotics/semantic_mapping_melodic .`

`bash run_cuda_docker.bash [container_name]`

## Open the container

`docker ps -a`

`docker exec -it [container_name] /bin/bash`
