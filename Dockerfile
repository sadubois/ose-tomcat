FROM registry.access.redhat.com/jboss-webserver-3/webserver30-tomcat8-openshift

MAINTAINER ceberle@redhat.com

# ADD sample.war /opt/webserver/webapps/

RUN curl https://raw.githubusercontent.com/eberlec/ose-tomcat/master/sample.war -o /opt/webserver/webapps/sample.war
EXPOSE 8080

# CMD ["${CATALINA_HOME}/bin/catalina.sh", "run"]
