pipeline{
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('git repo') {
            steps {
                git branch: 'main', credentialsId: 'git', url: 'https://github.com/imgoryachev/JenkinsPipeline.git'
            }
        }
        stage('Terraform'){
            steps {
                sh 'terraform init'
                sh 'terraform apply --auto-approve'
            }
        }
    }

}
