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
    }
}
