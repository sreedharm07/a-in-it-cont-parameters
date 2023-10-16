pipeline {
        agent any

        options {
            ansiColor('xterm')
        }


        stages {
      stage("release") {
           sh '''
        aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 471200138067.dkr.ecr.us-east-1.amazonaws.com
        docker build -t 471200138067.dkr.ecr.us-east-1.amazonaws.com/${component}:${TAG_NAME} .
        docker push 471200138067.dkr.ecr.us-east-1.amazonaws.com/${component}:${TAG_NAME}
               '''
                 }
            }
     }