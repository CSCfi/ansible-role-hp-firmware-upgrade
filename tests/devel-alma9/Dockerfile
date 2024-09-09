FROM almalinux:9.4
MAINTAINER Jukka Tuunanen <jukka.tuunanen@csc.fi>
ENV container docker
RUN dnf -y install acl sudo epel-release python39 && \
    sed -i -e 's/^Defaults.*requiretty/Defaults    !requiretty/' -e 's/^%wheel.*ALL$/%wheel    ALL=(ALL)    NOPASSWD: ALL/' /etc/sudoers && \
    yum -y groupinstall "Development Tools" && \
    yum -y install python3-pyyaml python3-jinja2 python3-setuptools python3-pip && \
    pip3 -V && \
    pip3 install pbr debtcollector stevedore && \
    pip3 install pysphere boto boto3 passlib && \
    yum -y remove $(rpm -qa "*-devel") && \
    yum -y autoremove && \
    yum -y install bzip2 crontabs file findutils gem git gzip hg procps-ng svn sudo tar tree which unzip xz zip && \
    yum -y install systemd grubby && \
    yum clean all && \
    pip3 install setuptools pathlib wheel && \
    pip3 install ansible==2.9.27

CMD ["/bin/bash"]
