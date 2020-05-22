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
        stage('Deliver') {
            agent { docker 'mcr.microsoft.com/azure-cli:latest' }
            environment {
                AZURE_STORAGE_ACCOUNT = credentials('AZURE_STORAGE_ACCOUNT')
                AZURE_STORAGE_KEY = credentials('AZURE_STORAGE_KEY')
            }
            steps {
              sh 'sh ./scripts/check-destination.sh'
              sh 'sh ./scripts/clean-destination.sh'
              sh 'sh ./scripts/deploy-to-destination.sh'
            }
        }
        stage('Validation') {
            steps {
                echo 'ok'
            }
        }
    }
}
