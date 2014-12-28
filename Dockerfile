# Pull base image.
FROM dockerfile/java:oracle-java7

# Define commonly used JAVA_HOME variable
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN useradd -ms /bin/bash exist

ENV HOME /home/exist
USER exist
WORKDIR /home/exist


RUN wget -O basex.zip http://files.basex.org/releases/latest/BaseX80-20141225.174535.zip
RUN unzip basex.zip
EXPOSE 1984 8984
CMD basex/bin/basexhttp
