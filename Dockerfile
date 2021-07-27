FROM myownwebserverimage:8.5.69-jdk8 
COPY .$WORKSPACE/target/JenkinsWar.war /usr/local/tomcat/webapps/
EXPOSE 8080

