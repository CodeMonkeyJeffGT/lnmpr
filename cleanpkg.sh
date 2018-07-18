#!/bin/bash

function cleanpkg ()
{
    if [ -d $1/ ] ; then
        echo 删除\ $1/
        rm -rf $1
    fi
}

cleanpkg nginx
cleanpkg php
cleanpkg redis
cleanpkg phpredis