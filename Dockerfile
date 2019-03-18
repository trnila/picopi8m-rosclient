FROM osrf/ros:melodic-desktop-full
RUN apt-get update && apt-get install -y  \
      tmux \
      vim \
      strace \
      iproute2 \
      iputils-ping \
      tcpdump \
      htop \
      openssh-client \
      python-pyqtgraph \
      ros-melodic-rosserial

#RUN apt-get install -y avahi-daemon
ADD ros_entrypoint.sh /
