FROM ubuntu:20.04
MAINTAINER admin@evoke.net
RUN apt-get update
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O -L https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/src/apache-tomcat-9.0.65-src.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN apt-get -y install openjdk-8-jdk
RUN java -version
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
