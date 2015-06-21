FROM centos:7
MAINTAINER Rob Haswell <me@robhaswell.co.uk>

#RUN if selinuxenabled; then setenforce 0; fi
#RUN test -e /etc/selinux/config && sed --in-place='.preflocker' 's/^SELINUX=.*$/SELINUX=disabled/g' /etc/selinux/config

RUN yum clean all
RUN yum install --nogpgcheck -y http://build.clusterhq.com/results/omnibus/nsenter-mount/centos-7/clusterhq-python-flocker-1.0.1-1.103.g9c93146.x86_64.rpm
RUN yum install --nogpgcheck -y http://build.clusterhq.com/results/omnibus/nsenter-mount/centos-7/clusterhq-flocker-node-1.0.1-1.103.g9c93146.noarch.rpm
