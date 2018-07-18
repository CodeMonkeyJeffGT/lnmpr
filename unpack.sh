#!/bin/bash

function unpack ()
{
    echo 解压\ pkgs/$1.tar.gz\ 至\ $2/
    tar -zxf pkgs/$1.tar.gz
    if [ $1 != $2 ]; then
        mv $1/ $2/
    fi
}

pkgnginx=nginx-1.14.0
pkgphp=php-7.2.7
pkgredis=redis-4.0.10
pkgphpredis=phpredis

if [ $1 ]; then
    unpack `eval echo '$pkg'$1` $1
else
    # 解压 nginx
    unpack $pkgnginx nginx

    # # 解压 php
    unpack $pkgphp php

    # # 解压 redis
    unpack $pkgredis redis

    # # 解压 phpredis
    unpack $pkgphpredis phpredis
fi
