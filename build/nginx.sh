#!/bin/bash

echo 安装\ nginx
cd nginx

if [ $1 ] ; then
    loc=$1
else
    echo -n 请输入安装路径，默认为\ /env/nginx/：
    read loc
    if [ ! $loc ] ; then
        loc=/env/nginx/
    fi
fi

yum -y install openssl-devel
./configure --prefix=$loc --with-http_stub_status_module --with-http_ssl_module
make
make install

cd ../
