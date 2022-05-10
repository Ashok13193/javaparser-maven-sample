pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage("Git checkout"){
            steps{
                git credentialsId: 'Github', url: 'https://github.com/Ashok13193/javaparser-maven-sample'
            }
        }
        stage("Maven Build"){
            steps{
                sh "mvn clean package"
            }
        }
        stage("Docker build"){
            steps{
                script{
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASS', usernameVariable: 'USER')]){
                        sh 'docker build -t ashokkumar13193/new:1.5 .'
                        sh 'docker login -u $USER -p $PASS'
                        sh 'docker push ashokkumar13193/new:1.5'
                    }
                }
                
            
            }
        }
    }
}
