ARG BUILD_FROM=x86/centos:7
FROM $BUILD_FROM
# build with default argument
# docker build . -t x86-libiscsi
#
# build with new argument
# docker build . -t arm-libiscsi --build-arg BUILD_FROM=arm/centos:7

LABEL usage='drun -v $PWD:/output -v /usr/portage/distfiles/libiscsi-1.19.0.tar.gz:/code/libiscsi-1.19.0.tar.gz libiscsi'

WORKDIR /code
COPY run.sh /

RUN yum update -y && \
	yum install -y autoconf automake libtool gcc make texinfo rpm-build

RUN sed -i '/__check_files/d' /usr/lib/rpm/macros

ENTRYPOINT ["/run.sh"]
