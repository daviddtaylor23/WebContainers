
FROM ubuntu:latest

#Non-interactive install.  Ex: No prompts for info during apache install
ENV DEBIAN_FRONTEND noninteractive

#Update apps, install apache2
RUN apt-get -y update && apt-get -qq -y install apache2

#Listen on port 80 by default.
EXPOSE 80/tcp

#Start webserver when the container starts
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D FOREGROUND"]
