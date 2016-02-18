FROM ubuntu:15.10

MAINTAINER Julien Kermes

RUN apt-get update && apt-get install -y git wget python2.7 r-base r-base-dev \
	&& cd home && wget https://bootstrap.pypa.io/get-pip.py \
	&& python2.7 get-pip.py && pip install pytest && rm get-pip.py