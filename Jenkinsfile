pipeline {
    agent any

    environment {
        IMAGE = 'vansh967/finaletp'
        CONTAINER = 'final1'
        GIT = 'https://github.com/Vansh-13/finaletp.git'
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: "$GIT"
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t %IMAGE% ."
            }
        }

        stage('Run Docker Container') {
            steps {
                bat '''
                docker stop %CONTAINER% || echo Container not running
                docker rm %CONTAINER% || echo Container not existing
                docker run -d --name %CONTAINER% -p 8090:80 %IMAGE%
                '''
            }
        }

        stage('Done') {
            steps {
                echo 'Build & Deploy Done!'
            }
        }
    }
}
