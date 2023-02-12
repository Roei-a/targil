pipeline {
    agent {
        docker {image 'my-image:latest'}
    }
    stages {
        stage ('Build'){
            steps {
                sh 'python3 /tmp/zip_job.py'
            }
        }
        stage ('Publish'){
            steps {
                sh 'echo "This is the Publish stage"'
                sh 'sleep 5'
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
