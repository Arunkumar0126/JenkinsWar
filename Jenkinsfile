pipeline {
    agent {
      label 'java'
    }
    environment {
      PATH = "/opt/maven/bin:$PATH"
    }
	triggers {
	   githubPush()
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Arunkumar0126/JenkinsWar.git', branch: 'master'
            }
        }

        stage('maven version checking') {
            steps {
                sh '/opt/maven/bin/mvn -v'
            }
        }
        stage('Build') {
            steps {
                sh '/opt/maven/bin/mvn clean install'
            }
        }
        stage('mydedeploy') {
            steps {
                sh 'scp -o StrictHostKeyChecking=no -r  /target/JenkinsWar.war ec2-user@172.31.16.24:/home/ec2-user/'
            }
        }
    }
}
