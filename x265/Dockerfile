FROM ubuntu:16.04
MAINTAINER Louis Liu <louisliu@kkstream.com.tw>
RUN apt-get update && apt-get install -y \
  git \
  yasm \
  pkg-config \
  wget \
  mercurial \
  dh-autoreconf \
  cmake \
  cmake-curses-gui \
  libx264-dev \
&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
WORKDIR /test_container
COPY build_local.sh ./
RUN ./build_local.sh
RUN rm -rf /test_container/*

RUN apt-get remove -y \
  git \
  yasm \
  pkg-config \
  wget \
  mercurial \
  dh-autoreconf \
  cmake \
  cmake-curses-gui

RUN rm -rf /root/ffmpeg_build

VOLUME ["/test_container"]
