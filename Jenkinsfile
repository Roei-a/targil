pipeline {
    agent {
        docker {image 'my-image:latest'}
    }
    tools {
        jfrog 'jfrog-cli-latest'
    }
    stages {
        stage ('Build'){
            steps {
                sh 'pwd'
                sh 'ls'
                sh 'sleep 5'
                sh 'ls /'
                sh 'python3 /tmp/zip_job.py'
            }
        }
        stage ('Publish'){
            steps {
                sh 'pwd'
                sh 'ls'
                sh 'sleep 5'
                sh '/root/jenkins/workspace/zip-job-docker/jf rt u *.zip binary-storage/$VERSION/'
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
