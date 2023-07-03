# docker build . -t x86/ubuntu:qemucc --build-arg BASE_IMAGE=x86/ubuntu:2004
# docker build . -t arm/ubuntu:qemucc --build-arg BASE_IMAGE=arm/ubuntu:2204
ARG BASE_IMAGE=x86/ubuntu:2204
FROM $BASE_IMAGE

LABEL usage="docker run -v /path/to/qemu:/code <tagname> /bin/bash"

WORKDIR /code

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	apt install -y pkg-config \
	zlib1g-dev \
	liblzo2-dev \
	libsnappy-dev \
	uuid-dev \
	libseccomp-dev \
	gnutls-dev \
	librdmacm-dev \
	libsasl2-dev \
	libpulse-dev \
	libasound2-dev \
	libcurl4-gnutls-dev \
	libpixman-1-dev \
	librbd-dev \
	libssh2-1-dev \
	libaio-dev \
	libnuma-dev \
	libcacard-dev \
	libgoogle-perftools-dev \
	libiscsi-dev \
	libssl-dev \
	libusb-1.0-0-dev \
	systemtap-sdt-dev \
	libopus-dev \
	libepoxy0 \
	libepoxy-dev \
	libgbm1 \
	libgbm-dev \
	libopengl0 \
	libopengl-dev \
	gcc \
	make \
	libcap-ng-dev \
	libattr1-dev \
	git
