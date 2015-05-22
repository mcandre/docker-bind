FROM mcandre/docker-debian:etch
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD policy-rc.d /usr/sbin/policyrc.d
ADD named.conf.options /etc/bind/named.conf.options
ADD named.conf.local /etc/bind/named.conf.local
ADD sneaky.net.zone /etc/bind/sneaky.net.zone
ADD 59.141.3.in-addr.arpa.zone /etc/bind/59.141.3.in-addr.arpa.zone
RUN apt-get update && \
    apt-get install -o Dpkg::Options::="--force-confold" --force-yes -y bind9 && \
    mkdir -m 0775 -p /var/run/named && \
		chown -R bind:bind /var/run/named && \
		touch /var/cache/bind/managed-keys.bind && \
		chown bind:bind /var/cache/bind/managed-keys.bind
EXPOSE 53/udp 53/tcp
ENTRYPOINT /usr/sbin/named -u bind -c /etc/bind/named.conf -g
