pipeline {
    agent any

    environment {
        IMAGE_NAME = 'vansh967/finaletp'
        CONTAINER_NAME = 'final1'
        GIT_REP = 'https://github.com/Vansh-13/finaletp.git'
    }

    stages {
        stage('Clone Code') {
            steps {
                git "$GIT_REP"
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t %IMAGE_NAME% ."
            }
        }

        stage('Run docker container') {
            steps {
                bat '''
                docker stop %CONTAINER_NAME%
                docker rm %CONTAINER_NAME%
                docker run -d --name %CONTAINER_NAME% -p 8080:80 %IMAGE_NAME%
                '''
            }
        }

        stage('Done') {
            steps {
                echo ' Build & Deploy Done!'
            }
        }
    }
}
