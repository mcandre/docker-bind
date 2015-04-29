# docker-bind - a Docker container for BIND

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-bind/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-bind .
docker exec 827d129d9696e2c0e99587ce8bfc66f208d8a991d53d2f7fbd8e6947c87e2a24 named-checkconf -zj
dig @$(boot2docker ip) www.google.com +short
216.58.216.196
dig @$(boot2docker ip) www.sneaky.net +short
3.141.59.26
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
