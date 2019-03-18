docker run -it --rm \
  --network=host \
  -v "$PWD":/root \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=:0 \
  -e ROS_MASTER_URI=http://192.168.1.5:11311 \
  my-ros \
  bash -c "source /root/catkin_ws/devel/setup.bash; exec bash"
