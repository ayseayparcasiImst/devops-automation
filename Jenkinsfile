stage('Email Notification'){
    mail bcc: '', body: '''Build successful!!!!
    Thanks,
    Ayse''', cc: '', from: '', replyTo: '', subject: 'Build successfull', to: 'aysayparcasi@gmail.com'
    echo 'e-mail OK!'
}

pipeline {
    agent any
    tools{
        maven "maven 3.5.0"
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'ayseayparcasiImst', url: 'https://github.com/ayseayparcasiImst/devops-automation']]])                
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t ayse/devops-integration .'
                }
            }
        }


    }
}
