FROM centos:7.9.2009
RUN yum install -y httpd php net-tools bind-utils telnet bash-completion traceroute tcpdump wget openssh-clients rsync iproute
EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
