pipeline {
    agent {
        node {
            label 'maven'
        }
    }

    environment {
        PATH = "/opt/apache-maven-3.9.6/bin:$PATH"
    }

    environment {
        def scannerHome = tool 'sonarqube-scanner'
    }

    stages {
        stage("mvn build stage") {
            steps {
                echo "----------- build started ----------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                echo "----------- build completed ----------"
            }
        }
    }

    stage('SonarQube analysis') {
        steps{
            withSonarQubeEnv('sonarqube-server') {
            sh "${scannerHome}/bin/sonar-scanner"
            }
        }
    }
}