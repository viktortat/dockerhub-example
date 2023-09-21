pipeline {
  agent { label 'linux' }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS_USR = 'tavis1'
    // DOCKERHUB_CREDENTIALS_PSW = 'dckr_pat_0vjOtCPrYMXsLwnRFOIXp29UxPM'
    // DOCKERHUB_CREDENTIALS_PSW = 'dckr_pat_0vjOtCPrYMXsLwnRFOIXp29UxPM'
    DOCKERHUB_CREDENTIALS_PSW = credentials('darinpope-dockerhub')
  }
  stages {
    stage('Login') {
      steps {
        sh './jenkins/login.sh'
      }
    }
    stage('Build') {
      steps {
        // sh './jenkins/build.sh'
        docker build -t tavis1/dp-alpine:latest .
      }
    }
  }
  post {
    always {
      sh './jenkins/logout.sh'
    }
  }
}
