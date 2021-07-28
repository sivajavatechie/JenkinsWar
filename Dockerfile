FROM myownwebserverimage:8.5.69-jdk8 
COPY ./JenkinsWar /usr/local/tomcat/webapps/JenkinsWar
EXPOSE 8080

