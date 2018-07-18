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



./cleanpkg.sh
