Jenkinsfile:
pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git branch: 'develop', url: 'https://github.com/syoginik/devops-case-studyy.git'
      }
    }
    stage('Dockerize') {
      steps {
        sh 'scripts/build_and_push.sh'
      }
    }
    stage('Terraform Apply') {
      steps {
        dir('infra') {
          sh 'terraform init'
          sh 'terraform apply -auto-approve'
        }
      }
    }
    stage('Deploy with Ansible') {
      steps {
        sh 'ansible-playbook -i ansible/hosts.ini ansible/deploy.yml'
      }
    }
  }
}

