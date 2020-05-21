pipeline {
    agent {
        docker {
            image 'python:3.6.10-alpine3.11'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Prepare') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'ok'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Deliver') {
            steps {
                echo 'ok'
            }
        }
    }
}
