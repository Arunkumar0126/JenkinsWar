pipeline {
    agent any
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
                sh '/usr/bin/mvn -v'
            }
        }
        stage('Build') {
            steps {
                sh '/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3/bin/mvn clean install'
            }
        }
        stage('mydedeploy') {
            steps {
                sh 'scp -o StrictHostKeyChecking=no -r /var/lib/jenkins/workspace/pipeline/target/JenkinsWar.war ec2-user@172.31.16.24:/home/ec2-user/'
            }
        }
    }
}
