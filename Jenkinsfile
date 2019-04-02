pipeline {
    agent {
        dockerfile {
            additionalBuildArgs '--build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g)'
            args '-v /var/lib/jenkins/workspace/install:/var/lib/jenkins/workspace/install:z'
        }
    }

    triggers {
        upstream(upstreamProjects: 'build-proton', threshold: hudson.model.Result.SUCCESS)
    }

    stages {
        stage('Clean') {
            steps {
                sh './scripts/clean.sh'
            }
        }

        stage('Get Source') {
            steps {
                sh './scripts/get-source.sh'
            }
        }

        stage('Install') {
            steps {
                sh './scripts/install.sh'
            }
        }

        stage('Check') {
            steps {
                sh './scripts/check-install.sh'
            }
        }
    }
}
