pipeline {
    agent { docker 'maven:3.6.1' }
    stages {
        stage('build') {
            steps {
                bat 'mvn --version'
            }
        }
    }
}
