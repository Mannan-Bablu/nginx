FROM ubuntu:16.04
MAINTAINER admin@evoke.net
RUN apt-get update
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz /opt/tomcat
RUN apt-get install -y openjdk-8-jdk
RUN java -version
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-9.0.65-src/bin/startup.sh", "run"]
ENTRYPOINT /opt/tomcat/apache-tomcat-9.0.65/bin/startup.sh && bash
