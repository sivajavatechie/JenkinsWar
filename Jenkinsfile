node{

   def tomcatWeb = 'C:\\Users\\sivareddy.c\\Downloads\\apache-tomcat-9.0.20-windows-x64\\apache-tomcat-9.0.20\\webapps'
   def tomcatBin = 'C:\\Users\\sivareddy.c\\Downloads\\apache-tomcat-9.0.20-windows-x64\\apache-tomcat-9.0.20\\bin'
   def tomcatStatus = ''
   stage('SCM Checkout'){
     git 'https://github.com/sivajavatechie/JenkinsWar.git'
   }
   stage('Compile-Package-create-war-file'){
      // Get maven home path
      def mvnHome =  tool name: 'maven-3', type: 'maven'   
      bat "${mvnHome}/bin/mvn package"
      }
   stage ('Stop Tomcat Server') {
               bat ''' @ECHO OFF
               wmic process list brief | find /i "tomcat" > NUL
               IF ERRORLEVEL 1 (
                    echo  Stopped
               ) ELSE (
               echo running
                  "${tomcatBin}\\shutdown.bat"
                  sleep(time:10,unit:"SECONDS") 
               )
'''
   }
   stage('Deploy to Tomcat'){
     bat "copy target\\JenkinsWar.war \"${tomcatWeb}\\JenkinsWar.war\""
   }
      stage ('Start Tomcat Server') {
         bat "${tomcatBin}\\startup.bat"
   }
}
