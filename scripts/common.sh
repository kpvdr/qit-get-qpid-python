#! /bin/bash

if [[ -z ${JENKINS_HOME+x} ]]; then
    JENKINS_HOME="/var/lib/jenkins"
fi
echo "JENKINS_HOME=${JENKINS_HOME}"

function get_dir_name {
    local base=${1##*/}
    GIT_DIR=${base%.*}
}

GIT_REPO="https://github.com/apache/qpid-python.git"
get_dir_name ${GIT_REPO}

CMAKE_INSTALL_PREFIX="${JENKINS_HOME}/workspace/install"
echo "CMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}"

#PROTON_SRC_DIR="${JENKINS_HOME}/workspace/build-proton/qpid-proton"
#CMAKE_INSTALL_PREFIX="${PROTON_SRC_DIR}/install"
#PROTON_BUILD_DIR="${PROTON_SRC_DIR}/build"
#PROTON_BINDINGS_INSTALL_DIR="${CMAKE_INSTALL_PREFIX}/lib64/proton/bindings"

# Python 2.7
#PY2_EXECUTABLE="/usr/bin/python"
#PY2_INCLUDE_DIR="/usr/include/python2.7"
#PY2_LIBRARY="/usr/lib64/libpython2.7.so"
#CMAKE_PY2_OPTS="-DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} -DBUILD_PYTHON="ON" -DPYTHON_EXECUTABLE=${PY2_EXECUTABLE} -DPYTHON_INCLUDE_DIR=${PY2_INCLUDE_DIR} -DPYTHON_LIBRARY=${PY2_LIBRARY}"

# Python 3.x
#PY3_EXECUTABLE="/usr/bin/python3.4m"
#PY3_INCLUDE_DIR="/usr/include/python3.4m"
#PY3_LIBRARY="/usr/lib64/libpython3.4m.so"
#CMAKE_PY3_OPTS="-DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} -DBUILD_PYTHON="ON" -DPYTHON_EXECUTABLE=${PY3_EXECUTABLE} -DPYTHON_INCLUDE_DIR=${PY3_INCLUDE_DIR} -DPYTHON_LIBRARY=${PY3_LIBRARY}"
