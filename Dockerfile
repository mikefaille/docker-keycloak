FROM centos:7
MAINTAINER michael@faille.io <michael@faille.io>

RUN echo "pub  4096R/F4A80EB5 2014-06-23 CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org> Key fingerprint = 6341 AB27 53D7 8A78 A7C2  7BB1 24C6 A8A7 F4A8 0EB5" | gpg --quiet --with-fingerprint /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

RUN yum install -y wget git tar java-1.8.0-openjdk-headless.x86_64

ENV JAVA_HOME /usr/lib/jvm/jre


WORKDIR /data
RUN wget http://downloads.sourceforge.net/project/keycloak/1.3.1.Final/keycloak-1.3.1.Final.tar.gz && tar xvfp keycloak-1.3.1.Final.tar.gz &&  rm keycloak-1.3.1.Final.tar.gz

CMD ["/data/keycloak-1.3.1.Final/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 9990
