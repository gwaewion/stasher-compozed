FROM archlinux:latest
LABEL maintainer="gwaewion@gmail.com"

EXPOSE 8080

RUN pacman -Sy \
	&& pacman -S  go git --noconfirm \
	&& mkdir -p /root/go/src \
	&& git clone https://github.com/gwaewion/stasher.git /root/go/src/stasher \
	&& cd /root/go/src/stasher \
	&& git checkout dev \
	&& go get -u github.com/gobuffalo/packr/v2/packr2 \
	&& go get \
	&& /root/go/bin/packr2 \
	&& go build

COPY sh.sh config.yml /root/

CMD bash /root/sh.sh