pipeline {
    agent {
        docker {
            image 'node:10-alpine'
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
