FROM myownwebserverimage:8.5.69-jdk8 
COPY ./JenkinsWar /opt/tomcat/webapps/JenkinsWar
EXPOSE 8080

