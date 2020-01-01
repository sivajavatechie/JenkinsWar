node{
   def tomcatWeb = 'C:\\Users\\sivareddy.c\\Downloads\\apache-tomcat-9.0.20-windows-x64\\apache-tomcat-9.0.20\\webapps'
   def tomcatBin = 'C:\\Users\\sivareddy.c\\Downloads\\apache-tomcat-9.0.20-windows-x64\\apache-tomcat-9.0.20\\bin'
   stage('SCM Checkout'){
     git 'https://github.com/sivajavatechie/JenkinsWar.git'
   }
   stage('Compile-Package-create-war-file'){
      // Get maven home path
      def mvnHome =  tool name: 'maven-3', type: 'maven'   
      bat "${mvnHome}/bin/mvn package"
      }
   stage ('Stop Tomcat Server') {
      bat "${tomcatBin}\\shutdown.bat"
   }
   stage('Deploy to Tomcat'){
     bat "copy target\\JenkinsWar.war \"${tomcatWeb}\\JenkinsWar.war\""
   }
      stage ('Start Tomcat Server') {
         bat "${tomcatBin }\\shutdown.bat"
   }
}
