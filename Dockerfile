FROM debian:stable-slim

ARG VERSION_D=3.8.0
ARG VERSION_U=3_8_0

ADD https://github.com/jamulussoftware/jamulus/releases/download/r${VERSION_U}/jamulus_headless_${VERSION_D}_ubuntu_amd64.deb /tmp/

RUN apt-get update && apt-get -y install /tmp/jamulus_headless_${VERSION_D}_ubuntu_amd64.deb && rm -rf /var/lib/apt/lists/*

RUN ln -s jamulus-headless /usr/bin/Jamulus

ENTRYPOINT ["jamulus-headless"]

