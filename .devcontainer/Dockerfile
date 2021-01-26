FROM osrf/ros:melodic-desktop-bionic

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    curl \
    dnsutils \
    emacs \
    git \
    iputils-ping \
    less \
    nano \
    net-tools \
    openssh-server \
    python-pip \
    python3-pip \
    python-tk \
    ros-melodic-navigation \
    ros-melodic-laser-filters \
    ros-melodic-laser-pipeline \
    ros-melodic-slam-gmapping \
    ros-melodic-map-server \
    ros-melodic-teleop-twist-keyboard \
    ros-melodic-mouse-teleop \
    ros-melodic-rosemacs \
    ros-melodic-roswww \
    ros-melodic-stage-ros \
    traceroute \
    x11-apps x11-utils x11-xserver-utils dbus-x11 \
    language-pack-ja-base language-pack-ja locales \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen ja_JP.UTF-8 && useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ubuntu

ENV LANG ja_JP.UTF-8
