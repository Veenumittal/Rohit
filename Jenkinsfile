pipeline {
    agent any
    tools {
        name: 'terraform', type: 'terraform'
    } 
    stages {
        stage('Git Checkout') {
            steps {
                git credentialsId: '73254a18-0985-40e6-93fb-59c19e5e8c4d', url: 'https://github.com/Veenumittal/Rohit.git'
            }
        }
        stage('Terraform init') {
            steps {
            sh label: '', script: 'terraform init'
            
        }
        }
        stage('Terraform Apply') {
            steps {
            sh label: '', script: 'terraform apply --auto-approve'
            
        }
        }
        }
    }
