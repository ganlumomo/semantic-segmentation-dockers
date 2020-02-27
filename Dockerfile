#FROM tensorflow/tensorflow:1.12.0-devel-gpu-py3
#FROM bvlc/caffe:gpu
FROM nvidia-segmgentation:latest

MAINTAINER Lu Gan, ganlu@umich.edu

RUN apt-get update && apt-get install -y --no-install-recommends \
        sudo \
	vim
