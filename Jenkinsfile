pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/TEJASBHIDE/devops-website-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t devops-website .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker rm -f devops-container || true'
                    sh 'docker run -d --name devops-container -p 8081:80 devops-website'
                }
            }
        }
    }
}
