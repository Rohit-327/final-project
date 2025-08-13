pipeline {
  agent { label 'terraform' } // 🖥️ Run on passive Terraform node
 
  environment {
    TF_DIR = 'Application' // path to your Terraform code
    TF_VARS = 'Application/tfvars/dev.tfvars'
  }
 
  stages {
 
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
