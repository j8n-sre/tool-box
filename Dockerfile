FROM centos:8.4.2105
RUN yum install -y httpd php net-tools bind-utils telnet bash-completion traceroute tcpdump wget openssh-clients rsync iproute nc iperf3 nfs-utils nfs4-acl-tools
EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
