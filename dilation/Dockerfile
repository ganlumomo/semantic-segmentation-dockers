FROM bvlc/caffe:gpu
LABEL maintainer ganlu@umich.edu

# dilation python dependencies
RUN pip install opencv-python && \
    pip install numba

# clone dilation repo
WORKDIR /workspace/dilation

# FIXME: use ARG instead of ENV once DockerHub supports this
# https://github.com/docker/hub-feedback/issues/460
ENV CLONE_TAG="master"

RUN git clone -b ${CLONE_TAG} --depth 1 https://github.com/fyu/dilation.git .
