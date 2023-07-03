# centos 7 upgrade to high version gcc(gcc8)

FROM x86/centos:7

RUN sed -e 's|^mirrorlist=|#mirrorlist=|g' \
        -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.ustc.edu.cn/centos|g' \
		-i.bak \
		/etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y && \
	yum install -y centos-release-scl make

RUN yum install -y devtoolset-8-gcc*

#scl enable devtoolset-8 bash
RUN echo 'source /opt/rh/devtoolset-8/enable' >> /etc/bashrc
