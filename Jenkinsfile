pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone repository
                git 'https://github.com/jon-ajaa/Project-4.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // build Docker image
                sh 'docker build -t jfc-web-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // run container
                sh 'docker run -d -p 8080:80 --name jfc-web jfc-web-app'
            }
        }
    }

    post {
        always {
            // cleanup setelah pipeline selesai
            sh 'docker rm -f jfc-web || true'
            sh 'docker rmi -f jfc-web-app || true'
        }
    }
}
