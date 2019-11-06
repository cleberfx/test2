FROM docker/compose:1.25.0-rc4


RUN sudo nohup docker daemon -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock &
