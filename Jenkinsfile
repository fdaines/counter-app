pipeline {
    agent none
    environment {
        CI = 'true'
    }
    stages {
        stage('Prepare') {
            agent { docker 'node:10-alpine' }
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            agent { docker 'node:10-alpine' }
            steps {
                echo 'ok'
                }
        }
        stage('Build') {
            agent { docker 'node:10-alpine' }
            steps {
                sh 'npm run build'
            }
        }
        stage('Check') {
            agent { docker 'mcr.microsoft.com/azure-cli:latest' }
            steps {
                sh 'sh ./scripts/check-destination.sh'
            }
        }
        stage('Deliver') {
            steps {
                echo 'ok'
            }
        }
    }
}
