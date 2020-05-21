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
                step('bla1') {
                    echo "jajajajja"
                }
                step('bla2') {
                    echo "jajajajja"
                }
                step('install') {

                }
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
        stage('Check') {
            steps {
                sh 'sh ./scripts/check-destination.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh check-destination.sh
                echo 'ok'
            }
        }
    }
}
