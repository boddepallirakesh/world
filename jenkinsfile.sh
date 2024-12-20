pipeline {
    agent any

    // Define environment variables
    environment {
        JAVA_HOME = '/usr/lib/jvm/java-11-openjdk'
        PATH = "${JAVA_HOME}/bin:${PATH}"
    }

    stages {
        // Stage 1: Checkout code from version control
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        // Stage 2: Build the application
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh './gradlew build' // Replace with Maven if using Maven: 'mvn clean install'
            }
        }

        // Stage 3: Run tests
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './gradlew test' // Replace with Maven if using Maven: 'mvn test'
            }
        }

        // Stage 4: Deploy the application
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh './gradlew deploy' // Replace with deployment commands
            }
        }
    }

    // Post actions
    post {
        always {
            echo 'Cleaning up workspace...'
            cleanWs()
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}

