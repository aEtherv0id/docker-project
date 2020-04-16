FROM centos:7

RUN yum -y update && yum -y install wget net-tools git \
    && yum -y clean all

RUN mkdir /opt/deploy

CMD ["bash"]
