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
                sh '/usr/bin/mvn clean install'
            }
        }
        stage('deploy') {
            steps {
                sh 'sudo scp -o StrictHostKeyChecking=no -r target/JenkinsWar.war ec2-user@172.31.16.24:/home/ec2-user/'
            }
        }
    }
}
