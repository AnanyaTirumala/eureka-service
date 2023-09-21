pipeline {
    agent any

    stages {
        stage('Build Eureka Service') {
            steps {
                //echo 'Hello World'
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/AnanyaTirumala/eureka-service.git']])
                bat 'mvn clean install'
            }
        }
        stage('Build Eureka Service Docker Image') {
            steps {
                //echo 'Hello World'
                bat 'docker build -t anya22/eureka-serv .'
            }
        }
        stage('Run Eureka Service') {
            steps {
                //echo 'Hello World'
                bat 'docker stop eureka-container'
                bat 'docker rm eureka-container'
                bat 'docker run -d --name eureka-container --network student-network -p 8761:8761 anya22/eureka-serv'
            }
        }
        stage('Build student job'){
            steps{
                build 'student-job'
            }
        }
    }
}
