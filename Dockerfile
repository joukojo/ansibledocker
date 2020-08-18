FROM debian:buster

RUN apt-get update && apt-get install -qq openssh-client gnupg 
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >>  /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update && apt-get install -y ansible python-pip
RUN pip install docker
