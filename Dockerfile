FROM java:latest 
MAINTAINER Andreas Jung <info@zopyx.com>

RUN apt-get update
RUN apt-get install -y curl expect cadaver

WORKDIR /tmp
RUN curl -LO http://downloads.sourceforge.net/exist/Stable/2.2/eXist-db-setup-2.2.jar
ADD exist-setup.cmd /tmp/exist-setup.cmd
RUN expect -f exist-setup.cmd
RUN rm eXist-db-setup-2.2.jar exist-setup.cmd

EXPOSE 8080 8443
ENV EXIST_HOME /opt/exist
WORKDIR /opt/exist
CMD tools/wrapper/bin/exist.sh console

