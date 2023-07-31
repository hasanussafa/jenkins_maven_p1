pipeline {
    /*agent { label 'linux'}*/
    agent any

    environment {
       
        DOCKERHUB_CREDENTIALS = credentials('jenkins_maven_p2')
       
    }
    
    stages {
        
        stage('gitclone') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hasanussafa/jenkins_maven_p1.git']])
            
            
                
            }
        }
        
        stage('Build') {
            steps {
                sh '/usr/local/bin/docker build -t hasanussafa/jenkins_maven_p2:latest .'
                
            }
        }
     
        stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | /usr/local/bin/docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            
            }
        }
        
        stage('Push') {
            steps {
                sh '/usr/local/bin/docker push hasanussafa/jenkins_maven_p2:latest'
                
            }
        }
        
    }
    post {
        always {
            sh '/usr/local/bin/docker logout'
        
        }
    }
}
