pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch : 'main',
                    url : 'https://github.com/Charankumar9170/simple-java-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
               sh 'java -jar target/simple-java-app-1.0-SNAPSHOT.jar'
            }
        }
    }
}
