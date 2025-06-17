pipeline {
    agent any

    tools {
        maven 'Maven 3' // Name configured under Global Tool Configuration
        jdk 'JDK 17'    // Adjust to your installed JDK version
    }

    stages {
        stage('Checkout') {
            steps {
                git 'pipeline {
    agent any

    tools {
        maven 'Maven 3' // Name configured under Global Tool Configuration
        jdk 'JDK 17'    // Adjust to your installed JDK version
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/YourUsername/YourRepo.git'  // 🔁 Change this to your Git URL
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
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed. Check logs.'
        }
    }
}
'  // 🔁 Change this to your Git URL
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
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed. Check logs.'
        }
    }
}
