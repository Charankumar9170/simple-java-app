pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Charankumar9170/simple-java-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                java -cp target/simple-java-app-1.0-SNAPSHOT.jar App > output.txt
                '''
            }
        }
    }
}
