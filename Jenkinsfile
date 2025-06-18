pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Arunkumar0126/JenkinsWar.git', branch: 'master'
            }
        }

        stage('maven version checking') {
            steps {
                sh '/usr/bin/mvn -v'
            }
        }
        stage('Build') {
            steps {
                sh '/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3/bin/mvn clean install'
            }
        }
    }
}
