pipeline {
    agent any

    tools {
        maven 'Maven 3'   // Match name in Jenkins global tool config
        jdk 'JDK 17'      // Match name in Jenkins global tool config
    }

    stages {
        stage('Verify Maven') {
            steps {
                sh '/usr/bin/mvn -v'  // ✅ Correct syntax with quotes
            }
        }

        stage('Checkout') {
            steps {
                git 'https://github.com/Arunkumar0126/JenkinsWar.git'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Archive WAR') {
            steps {
                archiveArtifacts artifacts: '**/target/*.war', fingerprint: true
            }
        }
    }

    post {
        success {
            echo '✅ Build succeeded!'
        }
        failure {
            echo '❌ Build failed. Check errors.'
        }
    }
}
