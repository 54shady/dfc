# create a image install the libiscsi version 1.19
# docker build --network host . -t ctos-libiscsi19

# using builder to build the rpm package
FROM x86/centos:7 as builder

WORKDIR /code
COPY run.sh /
COPY ./libiscsi-1.19.0.tar.gz /code/

RUN yum update -y && \
	yum install -y autoconf automake libtool gcc make texinfo rpm-build

RUN sed -i '/__check_files/d' /usr/lib/rpm/macros

RUN /run.sh

# the target image, which will install the rpm
FROM x86/centos:7

COPY --from=builder /root/rpmbuild/RPMS/x86_64/libiscsi-1.19.0-1.19.0.x86_64.rpm /tmp/
RUN yum install -y /tmp/libiscsi-1.19.0-1.19.0.x86_64.rpm
