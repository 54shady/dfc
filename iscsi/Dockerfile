ARG BASE_IMAGE=x86/ubuntu:2204
FROM $BASE_IMAGE

COPY run.sh /

# https://www.qemu.org/docs/master/system/qemu-block-drivers.html

# 1. docker build . -t iscsi

# 2. run as below
LABEL usage="docker run --name iscsi -d --restart always \
	--net=host --privileged -v /path/to/storage:/IMAGES iscsi"

# 3. test with qemu
# qemu-system-x86_64 \
#	-iscsi initiator-name=iqn.qemu.test:my-initiator \
#	-boot d -drive file=iscsi://127.0.0.1/iqn.qemu.test/1 \
#   -cdrom iscsi://127.0.0.1/iqn.qemu.test/2

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	apt-get -y --no-install-recommends install tgt

ENTRYPOINT ["/run.sh"]
