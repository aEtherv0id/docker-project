FROM aetherv0id/gt-centos7-vanilla:latest

RUN curl https://cdn.azul.com/zulu/bin/zulu11.39.15-ca-jdk11.0.7-linux.x86_64.rpm -o ~/zulu-jdk1107-x86_64.rpm \
    && yum -y localinstall ~/zulu-jdk1107-x86_64.rpm \
    && export JAVA_HOME=/usr/lib/jvm/zulu-11/bin \
    && export PATH=$JAVA_HOME:$PATH \
    && rm ~/zulu-jdk1107-x86_64.rpm \
    && yum -y install zip unzip \
    && yum -y clean all

RUN wget http://mirror.rise.ph/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip ~/ \
    &&

CMD ["bash"]
