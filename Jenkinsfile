pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/shankar1016/Terraform.git'
            }
        }
        stage('Check Terraform Installation') {
            steps {
                script {
                    // Check if Terraform is installed
                    def terraformVersion = sh(script: 'terraform --version', returnStdout: true).trim()
                    echo "Terraform version: ${terraformVersion}"
                }
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
                    // Apply the Terraform configuration
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
