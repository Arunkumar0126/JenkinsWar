pipeline {
    agent any

 
    environment {
        TOMCAT_DIR = "/opt/tomcat11"
        WAR_NAME = "mynewapplication.war"
    }
	
    stages {
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

        stage('Deploy WAR to Tomcat') {
            steps {
                sh '''
                    WAR_FILE=$(find target -name "*.war" | head -n 1)
                    if [ -f "$WAR_FILE" ]; then
                        echo "Stopping Tomcat..."
                        sudo sh /opt/tomcat11/bin/ shutdown.sh

                        echo "Starting Tomcat..."
                        sudo sh /opt/tomcat11/bin/ startup.sh
                    else
                        echo "WAR file not found!"
                        exit 1
                    fi
                '''
            }
        }
    }
}
