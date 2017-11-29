FROM ubuntu
MAINTAINER Louis Liu <louisliu@kkstream.com.tw>
RUN apt-get update
RUN apt-get -qqy install git
RUN apt-get -qqy install yasm
RUN apt-get -qqy install pkg-config
RUN apt-get -qqy install python
RUN apt-get -qqy install python-pip
RUN apt-get -qqy install x265
RUN apt-get -qqy install ffmpeg
CMD ["/bin/bash"]
WORKDIR /test_container
VOLUME ["/test_container"]
