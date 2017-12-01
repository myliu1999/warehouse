FROM ubuntu
MAINTAINER Louis Liu <louisliu@kkstream.com.tw>
RUN apt-get update
RUN apt-get -qqy install git
RUN apt-get -qqy install yasm
RUN apt-get -qqy install pkg-config
RUN apt-get -qqy install python
RUN apt-get -qqy install python-pip
RUN apt-get -qqy install wget
RUN apt-get -qqy install mercurial
RUN apt-get -qqy install dh-autoreconf
RUN apt-get -qqy install cmake
RUN apt-get -qqy install cmake-curses-gui
RUN apt-get -qqy install libx264-dev
CMD ["/bin/bash"]
WORKDIR /test_container
COPY build_local.sh ./
RUN ./build_local.sh
VOLUME ["/test_container"]
