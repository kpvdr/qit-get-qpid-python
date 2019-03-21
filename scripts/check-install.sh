#! /bin/bash

. ./scripts/common.sh

error_found=flase

if [[ -d ${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/qpid ]]; then
    echo "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/qpid directory found - ok"
else
    echo "error: ${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/qpid directory missing"
    error_found=true
fi

if [[ "${error_found}" = true ]]; then
    echo "ERROR: missing directory - exiting with error"
    exit 1
fi

