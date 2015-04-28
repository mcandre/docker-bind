FROM ubuntu:12.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

ADD policy-rc.d /usr/sbin/policyrc.d

RUN apt-get update
RUN apt-get install -y bind9
RUN mkdir -m 0775 -p /var/run/named && \
		chown -R bind:bind /var/run/named && \
		touch /var/cache/bind/managed-keys.bind && \
		chown bind:bind /var/cache/bind/managed-keys.bind

ADD named.conf.options /etc/bind/named.conf.options

EXPOSE 53/udp

ENTRYPOINT /usr/sbin/named -u bind -c /etc/bind/named.conf -g
