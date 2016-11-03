# docker-bind - a Docker container for BIND

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-bind/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-bind .
docker exec 827d129d9696e2c0e99587ce8bfc66f208d8a991d53d2f7fbd8e6947c87e2a24 named-checkconf -zj
dig @$(docker-machine ip default) www.google.com +short
216.58.216.196
dig @$(docker-machine ip default) www.sneaky.net +short
3.141.59.26
dig @$(docker-machine ip default) -x 3.141.59.26 +noall +authority

; <<>> DiG 9.8.3-P1 <<>> @192.168.59.103 -x 3.141.59.26 +noall +authority
; (1 server found)
;; global options: +cmd
59.141.3.in-addr.arpa.	7200	IN	SOA	root.localhost. root.sneaky.net. 2015043000 259200 3600 1036800 7200
```

# ABOUT

docker-bind is an example Docker container for a caching DNS resolver and master DNS authority.

# REQUIREMENTS

* [Docker](https://www.docker.com/)
* [dig](http://man.cx/dig)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential dnsutils
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io bind-utils
```
