# more info https://registry.hub.docker.com/_/tomcat/
FROM tomcat:8.0.24-jre8

EXPOSE 8080
EXPOSE 8443

ADD data/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD data/server.xml /usr/local/tomcat/conf/server.xml
ADD data/certs /certs
ADD data/cas_v4.0.3.RESTenabled.war /usr/local/tomcat/webapps/cas.war
