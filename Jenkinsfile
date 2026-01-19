pipeline {
  agent any

  parameters {
    choice(name: 'DEPLOY_TO', choices: ['blue', 'green'])
  }

  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t java-image .'
      }
    }

    stage('Deploy') {
      steps {
        sh "ansible-playbook ansible/${DEPLOY_TO}.yml"
      }
    }

    stage('Switch Traffic') {
      steps {
        sh 'ansible-playbook ansible/switch.yml'
      }
    }
  }
}

