ARG BUILD_FROM=arm/ubuntu:2204
FROM $BUILD_FROM
# build with default argument
# docker build . -t arm/ubuntu:rootfs
#
# build with new argument
# docker build . -t x86/ubuntu:rootfs --build-arg BUILD_FROM=x86/ubuntu:2204

WORKDIR /code

LABEL usage='drun -v $PWD/jammy-base-arm64.tar.gz:/tmp/seed.tar.gz -v $PWD:/code arm/ubuntu:rootfs'

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	apt install -y xz-utils

ENTRYPOINT ["sh", "-c", "./stage0.sh && ./stage1.sh && ./stage3.sh"]
