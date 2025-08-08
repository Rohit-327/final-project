pipeline {
  agent { label 'terraform' } // 🖥️ Run on passive Terraform node
 
  environment {
    TF_DIR = 'application/ec2' // path to your Terraform code
    TF_VARS = 'application/ec2/tfvars/dev.tfvars'
  }
 
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
 
    stage('Terraform Init') {
      steps {
        dir("${env.TF_DIR}") {
          sh 'terraform init'
        }
      }
    }
 
    stage('Terraform Validate') {
      steps {
        dir("${env.TF_DIR}") {
          sh 'terraform validate'
        }
      }
    }
 
    stage('Terraform Plan') {
      steps {
        dir("${env.TF_DIR}") {
          sh "terraform plan -var-file=${env.TF_VARS}"
        }
      }
    }
 
    stage('Terraform Apply') {
      steps {
        dir("${env.TF_DIR}") {
          sh "terraform apply -auto-approve -var-file=${env.TF_VARS}"
        }
      }
    }
  }
 
  post {
    success {
      echo '✅ Terraform pipeline completed successfully!'
    }
    failure {
      echo '❌ Terraform pipeline failed.'
    }
  }
}
