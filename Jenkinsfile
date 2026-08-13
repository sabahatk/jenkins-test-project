pipeline {
    agent any
 
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')
        IMAGE_NAME = 'sabahatkhan/sabahat-python-app'
    }
 
    stages {
        stage('Sabahat - Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:latest .'
            }
        }
        stage('Sabahat - Login to Dockerhub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Sabahat - Push image to Dockerhub') {
            steps {
                sh 'docker push $IMAGE_NAME:latest'
            }
        }
    }
 
    post {
        always {
            sh 'docker logout || true'
        }
    }
}
