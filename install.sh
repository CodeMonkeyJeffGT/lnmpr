#!/bin/bash

function pkgExist ()
{
    if [ ! -d $1/ ] ; then
        ./unpack.sh $1
    fi
}

# 检查环境
pkgExist nginx
pkgExist php
pkgExist redis
pkgExist phpredis

echo -n 请指定安装路径，默认为\ /env：
read base
if [ ! $base ] ; then
    base=/env
fi

build/nginx.sh $base/nginx
build/php.sh $base/php
build/redis.sh $base/redis
build/phpredis.sh $base/php

echo 安装完成
# ./cleanpkg.sh
