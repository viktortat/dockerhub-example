pipeline {
  agent { label 'linux' }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    // DOCKERHUB_CREDENTIALS_USR = 'tavis1'
    // DOCKERHUB_CREDENTIALS_PSW = 'dckr_pat_0vjOtCPrYMXsLwnRFOIXp29UxPM'
    MYDOCKERHUB_CREDENTIALS_PSW = credentials('darinpope-dockerhub')
  }
  stages {
    stage('Login') {
      steps {
        sh './jenkins/login.sh'
      }
    }
  }
  post {
    always {
      sh './jenkins/logout.sh'
    }
  }
}
