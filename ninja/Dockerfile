# docker build . -t arm/ubuntu:ninjacc
# docker build . -t x86/ubuntu:ninjacc --build-arg BASE_IMAGE=x86/ubuntu:2204
ARG BASE_IMAGE=arm/ubuntu:2204
FROM $BASE_IMAGE

LABEL usage="docker run -v /path/to/ninja:/code ninjacc"

WORKDIR /code

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	apt install -y python2 build-essential

RUN ln -s /usr/bin/python2 /usr/bin/python

CMD ["python", "configure.py", "--bootstrap"]
