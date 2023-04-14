#!/usr/bin/env bash

tar xvf /code/libiscsi-1.19.0.tar.gz
cd /code/libiscsi-1.19.0

sed -i 's/Release:.*/Release: 1.19.0/' packaging/RPM/libiscsi.spec.in
sed -i '/iscsi-test-cu/d' packaging/RPM/libiscsi.spec.in
./autogen.sh
./configure
make
./packaging/RPM/makerpms.sh

cp -rvfd /root/rpmbuild/ /output/
