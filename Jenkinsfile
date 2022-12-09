pipeline{
    agent any

    parameters {
        booleanParam(name: 'destroy', defaultValue: false, description: 'Destroy Terraform build?')
    }

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION = 'us-east-1'
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
                sh 'terraform plan'
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Terraform destroy') {
            when {
                equals expected: true, actual: params.destroy
            }
            steps {
                sh 'terraform destroy'
            }
        }
    }

}
