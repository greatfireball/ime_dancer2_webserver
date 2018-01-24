ARG version=xenial
FROM ubuntu:${version}

LABEL maintainer="foersterfrank@gmx.de"

RUN apt update && apt install --yes \
	build-essential \
	cpanminus \
	libdbi* \
	libdbd* \
	libdbix* \
	libposix-strftime-compiler-perl \
	libapache-logformat-compiler-perl

RUN cpanm \
	Dancer2 \
	Dancer2::Plugin::DBIC
