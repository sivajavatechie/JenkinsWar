node{
   def tomcatWeb = 'C:\\Users\\sivareddy.c\\Downloads\\apache-tomcat-9.0.20-windows-x64\\apache-tomcat-9.0.20\\webapps'
   stage('SCM Checkout'){
     git 'https://github.com/sivajavatechie/JenkinsWar.git'
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'maven-3', type: 'maven'   
      bat "${mvnHome}/bin/mvn package"
   }
   stage('Deploy to Tomcat'){
     bat "copy target\\JenkinsWar.war \"${tomcatWeb}\\JenkinsWar.war\""
   }
}
