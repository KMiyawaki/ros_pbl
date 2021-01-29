FROM ros:melodic-ros-base

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen ja_JP.UTF-8 && useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ubuntu

RUN git clone https://github.com/KMiyawaki/setup_robot_programming.git /home/ubuntu

WORKDIR /home/ubuntu/setup_robot_programming

RUN ./set_japanese_apt.sh && ./install_basic_packages.sh

ENV LANG ja_JP.UTF-8
