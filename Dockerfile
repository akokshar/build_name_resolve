FROM rhel7

RUN yum clean all && \
	yum-config-manager --disable rhel-sjis-for-rhel-7-server-rpms && \
	yum-config-manager --enable rhel-7-server-extras-rpms && \
	yum-config-manager --enable rhel-7-server-rpms && \
	yum -y install bind-utils && \
	yum clean all

ENV CHANGEME=3

RUN nslookup -debug  www.google.com
RUN nslookup -debug  www.redhat.com
RUN nslookup -debug  master.ose3.test
RUN nslookup -debug  test.name.apps.ose3.test
RUN nslookup -debug  long.long.name.apps.ose3.test
RUN nslookup -debug  cakephp-example-cake
