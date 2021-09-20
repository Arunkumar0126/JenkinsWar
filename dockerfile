FROM tomcat:8.0
MAINTAINER rakeshsk.com
COPY ./*.war /usr/local/tomcat/webapps
