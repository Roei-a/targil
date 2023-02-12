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
                sh 'ls -lh /root/jenkins/tools/io.jenkins.plugins.jfrog.JfrogInstallation/jfrog-cli-latest/'
                sh 'echo $VERSION'
            }
        }
        stage ('Publish'){
            steps {
                jf 'rt u *.zip binary-storage/""$VERSION""/'
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
