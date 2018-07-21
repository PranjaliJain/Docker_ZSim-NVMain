# Docker_ZSim-NVMain
This is a docker version of ZSim-NVMain simulator. 

# ZSim-NVMain Dockerfile

This repository contains Dockerfile of ZSim-NVMain simulator.

ZSim : https://github.com/s5z/zsim
NVMain : https://github.com/AXLEproject/axle-zsim-nvmain

Using this dockerfile you can setup ZSim-NVMain on your machine in Docker in one go. 

# Base Docker Image
dockerfile/ubuntu

# Installation
1. Install Docker.

2. Clone this repository and build an image from the dockerfile.

(you can build an image from Dockerfile: docker build -t zsim-nvmain_image:latest .)

# Usage
docker run -it --rm --name run-zsim zsim-nvmain_image:latest
