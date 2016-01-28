FROM rhel7

RUN yum clean all && \
	yum-config-manager --disable rhel-sjis-for-rhel-7-server-rpms && \
	yum-config-manager --enable rhel-7-server-extras-rpms && \
	yum-config-manager --enable rhel-7-server-rpms && \
	yum -y install bind-utils && \
	yum clean all

ENV CHANGEME=1

RUN dig @172.30.0.1 www.google.com
RUN dig @172.30.0.1 www.redhat.com
RUN dig @172.30.0.1 master.ose3.test
RUN dig @172.30.0.1 test.name.apps.ose3.test
RUN dig @172.30.0.1 long.long.name.apps.ose3.test

RUN dig @192.168.100.1 www.google.com
RUN dig @192.168.100.1 www.redhat.com
RUN dig @192.168.100.1 master.ose3.test
RUN dig @192.168.100.1 test.name.apps.ose3.test
RUN dig @192.168.100.1 long.long.name.apps.ose3.test


RUN curl -v https://www.google.cz/search?q=curl+-vXHEAD&ie=utf-8&oe=utf-8&gws_rd=cr&ei=cvipVtS-OonsaJbsjIAL#q=build+domain+name+resolution+test
