FROM centos:7

RUN yum -q -y update && yum -q clean all

RUN yum -q -y install epel-release && \
    yum -y install git python-devel sudo && \
    yum -q clean all

ARG USER_ID=996
ARG GROUP_ID=994
RUN groupadd -g $GROUP_ID jenkins && useradd -u $USER_ID -s /bin/sh -g jenkins jenkins
RUN echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
