pipeline {
    agent any

    environment {
        IMAGE_NAME = "html-css-app"
        CONTAINER_NAME = "html_app"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AnnaReddybandi/docker-frontend-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Stop Previous Container') {
            steps {
                sh """
                if [ \$(docker ps -q -f name=${CONTAINER_NAME}) ]; then
                    docker stop ${CONTAINER_NAME} && docker rm ${CONTAINER_NAME}
                fi
                """
            }
        }

        stage('Run Docker Container') {
            steps {
                sh "docker run -d -p 80:80 --name ${CONTAINER_NAME} ${IMAGE_NAME}"
            }
        }
    }
}

