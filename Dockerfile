FROM java:latest 
MAINTAINER Andreas Jung <info@zopyx.com>

RUN apt-get update
RUN apt-get install -y curl expect cadaver

WORKDIR /tmp
RUN curl -L -o eXist-db-setup-3.6.0.jar https://bintray.com/existdb/releases/download_file?file_path=eXist-db-setup-3.6.0.jar
RUN ls -la
ADD exist-setup.cmd /tmp/exist-setup.cmd
RUN expect -f exist-setup.cmd
RUN rm eXist-db-setup-3.6.0.jar exist-setup.cmd

EXPOSE 8080 8443
ENV EXIST_HOME /opt/exist
WORKDIR /opt/exist
CMD bin/startup.sh
