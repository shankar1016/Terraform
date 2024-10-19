pipeline {
    agent any
    stages {

        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/shankar1016/Terraform.git'
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Create a Terraform plan
                    sh 'terraform plan'
                }
            }
        }
		stage('Terraform Apply') {
            steps {
                script {
                    // Create a Terraform plan
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
