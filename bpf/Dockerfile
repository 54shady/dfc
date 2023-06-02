FROM x86/ubuntu:2004

# compile linux 5.4 for huc
# docker build . -t bpf2004
WORKDIR /code

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	apt-get -y --no-install-recommends install libncurses-dev gawk flex \
		bison openssl libssl-dev dkms \
        libelf-dev libudev-dev libpci-dev libiberty-dev autoconf llvm libcap2-dev \
		rsync bc git clang binutils-dev dpkg-dev
