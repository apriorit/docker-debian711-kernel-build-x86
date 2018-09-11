FROM i386/debian:7.11

RUN  /bin/sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list \
	&& /bin/sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
	&& apt-get update
RUN apt-get -y 	install	apt-utils
