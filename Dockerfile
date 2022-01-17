FROM centos

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz
RUN tar xzvf apache-tomcat-9.0.56.tar.gz 
RUN mv apache-tomcat-9.0.56/* /opt/tomcat/.
RUN yum -y install java-1.8.0-openjdk-devel
RUN java -version
RUN chmod a+x /opt/tomcat
 
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
