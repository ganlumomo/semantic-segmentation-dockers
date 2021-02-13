container_name=$1

xhost +local:
#docker run -it --net=host --runtime=nvidia \
docker run -it --ipc=host --runtime=nvidia \
  --user=$(id -u) \
  -e DISPLAY=$DISPLAY \
  -e QT_GRAPHICSSYSTEM=native \
  -e CONTAINER_NAME=cuda \
  -e USER=$USER \
  --workdir=/home/$USER \
  -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -v "/etc/group:/etc/group:ro" \
  -v "/etc/passwd:/etc/passwd:ro" \
  -v "/etc/shadow:/etc/shadow:ro" \
  -v "/etc/sudoers.d:/etc/sudoers.d:ro" \
  -v "/home/$USER/Docker/:/home/$USER/" \
  #-v "/media/$USER/PERL-SSD/:/home/$USER/media/PERL-SSD" \
  #-v "/media/sda1/:/home/$USER/media/sda1" \
  --device=/dev/dri:/dev/dri \
  --name=${container_name} \
  #ganlu/v1:latest
  nvidia-segmentation:latest
