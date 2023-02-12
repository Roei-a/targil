pipeline {
    agent {
        docker {image 'my-image:latest'}
    }
    tools {
        jfrog 'jfrog-cli-latest'
    }
    stages {
        stage ('Install JFrog CLI') {
            steps {
                sh 'curl -fL https://getcli.jfrog.io | sh'
            }
        }
        stage ('Build'){
            steps {
                sh 'sleep 5'
                sh 'python3 /tmp/zip_job.py'
            }
        }
        stage ('Publish'){
            steps {
                jf 'rt u *.zip binary-storage/'
            }
        }
        stage ('Report'){
            steps {
                sh 'echo "This is the Report stage"'
                sh 'sleep 5'
            }
        }
        stage ('Cleanup'){
            steps {
                sh 'echo "This is the Cleanup stage"'
            }
        }
    }
}
