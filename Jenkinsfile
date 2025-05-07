pipeline {
    agent any

    environment {
        IMAGE = 'vansh967/finaletp'
        CONTAINER = 'final1'
        GIT = 'https://github.com/Vansh-13/finaletp.git'
    }

    stages {
        stage('clone Code') {
            steps {
                git: branch 'main', url:"$GIT"
            }
        }

        stage('build Docker Image') {
            steps {
                bat "docker build -t %IMAGE% ."
            }
        }

        stage('Run docker container') {
            steps {
                bat '''
                docker stop %CONTAINER%
                docker rm %CONTAINER%
                docker run -d --name %CONTAINER% -p 8080:80 %IMAGE%
                '''
            }
        }

        stage('done') {
            steps {
                echo ' Build & Deploy Done!'
            }
        }
    }
}
