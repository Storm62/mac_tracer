FROM tomcat:9.0-alpine

MAINTAINER Pavel_Oleg

RUN apt-get update

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
#COPY app.war /usr/local/tomcat/webapps/ROOT.war
ADD app.war /usr/local/tomcat/webapps/
EXPOSE 3030
