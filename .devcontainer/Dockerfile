FROM ros:melodic-ros-base

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    locales \
    wget \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen ja_JP.UTF-8 && useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ubuntu

RUN git clone https://github.com/KMiyawaki/setup_robot_programming.git /home/ubuntu/setup_robot_programming

WORKDIR /home/ubuntu/setup_robot_programming

RUN ./install_basic_packages.sh \
    && ./install_python_packages.sh \
    && ./install_ros_packages.sh \
    && ./install_vscode_extensions_from_file.sh \
    && ./upgrade_packages.sh \
    && ./init_workspace.sh  \
    && sudo apt-get -y clean \
    && sudo rm -rf /var/lib/apt/lists/*

ENV LANG ja_JP.UTF-8
