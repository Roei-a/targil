pipeline {
    environment {
        VERSION = '1.2.0'
    }
    agent {
        docker {image 'my-image:latest'}
    }
    tools {
        jfrog 'jfrog-cli-latest'
    }
    stages {
        stage ('Build'){
            steps {
                sh 'python3 /tmp/zip_job.py'
            }
        }
        stage ('Publish'){
            steps { 
                jf "rt u *.zip binary-storage/$VERSION/"
            }
        }
    }
    post {
        always {
            mail body: "Pipeline finished with status: ${currentBuild.currentResult}",
                from: 'roeitemp1@gmail.com',
                subject: "Pipeline finished: ${currentBuild.currentResult}",
                to: 'roeitemp1@gmail.com'
            cleanWs()
        }
    }
}
