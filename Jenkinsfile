pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-website .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker rm -f devops-container || echo "No container to remove"'
                bat 'docker run -d --name devops-container -p 8081:80 devops-website'
            }
        }
    }
}
