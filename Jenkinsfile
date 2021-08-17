pipeline{
  agent { label 'mavenbuild' }
  stages {  
    stage ("cloning MY repo") {	
	  steps{
	    git changelog: false, credentialsId: 'myserver-id', poll: false, url: 'https://github.com/saravananajay/JenkinsWar.git'  	  
	  }	
	}
    stage (" Maven Build") {	
	  steps{
	   sh "/opt/maven/bin/mvn clean package"	  	  
	  }	
	}	
  }
}
