pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/MrugeshKalal/my_protfoliosite.git'
            }
        }

        stage('Build') {
            steps {
                echo "No build step required for static portfolio site."
                // If it was a Node.js/React app, you would use: sh 'npm install && npm run build'
            }
        }

        stage('Test') {
            steps {
                echo "No tests available for static portfolio site."
                // If you had tests, add them here (e.g., npm test or pytest)
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying application to web server..."
                sh '''
                    # Ensure you have permissions to copy files
                    cp -r * /var/www/html/
                '''
            }
        }
    }
}
