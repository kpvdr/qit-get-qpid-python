#! /bin/bash

. ./scripts/common.sh

cd ${GIT_DIR}
./setup.py install --prefix=${JENKINS_HOME}/workspace/install
