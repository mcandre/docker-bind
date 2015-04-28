# docker-bind - a Docker container for BIND

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-bind/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-bind .
dig @$(boot2docker ip) www.google.com

; <<>> DiG 9.8.3-P1 <<>> @192.168.59.103 www.google.com
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 34517
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;www.google.com.			IN	A

;; ANSWER SECTION:
www.google.com.		299	IN	A	216.58.216.196

;; Query time: 135 msec
;; SERVER: 192.168.59.103#53(192.168.59.103)
;; WHEN: Tue Apr 28 13:50:14 2015
;; MSG SIZE  rcvd: 48
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)
* [dig](http://man.cx/dig)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential dnsutils
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io bind-utils
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker bind-toolsonly make
```
