# build with default argument for example
# docker build . -t bpf2004
ARG BASE_IMAGE=x86/ubuntu:2004
FROM $BASE_IMAGE
# build with argument in commandline
# docker build . -t bpf2204 --build-arg x86/ubuntu:2204

# ubuntu 20.04 using dwarves
# ubuntu 22.04 using pahole
# docker build . -t bpf2204 --build-arg x86/ubuntu:2204 --build-arg LAYOUTTOOL=pahole
ARG LAYOUTTOOL=dwarves

WORKDIR /code

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	apt-get -y --no-install-recommends install libncurses-dev gawk flex \
		bison openssl libssl-dev dkms \
        libelf-dev libudev-dev libpci-dev libiberty-dev autoconf llvm libcap2-dev \
		rsync bc $LAYOUTTOOL git clang binutils-dev dpkg-dev g++
