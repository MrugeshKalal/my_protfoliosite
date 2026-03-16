pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/MrugeshKalal/my_protfoliosite.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker Image..."
                sh 'docker build -t portfolio-site .'
            }
        }

        stage('Stop Old Container') {
            steps {
                echo "Stopping old container if running..."
                sh 'docker rm -f portfolio-container || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Starting new container..."
                sh 'docker run -d -p 8081:80 --name portfolio-container portfolio-site'
            }
        }

    }
}
