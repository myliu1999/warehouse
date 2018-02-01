FROM ubuntu:16.04
MAINTAINER Louis Liu <louisliu@kkstream.com.tw>
CMD ["/bin/bash"]
WORKDIR /test_container
COPY build_local.sh ./
COPY packages ./
RUN apt-get update \
  && apt-get install -y $(grep -vE "^\s*#" packages  | tr "\n" " ") \
  && ./build_local.sh \
  && apt-get remove -y $(grep -vE "^\s*#" packages  | tr "\n" " ")

VOLUME ["/test_container"]
