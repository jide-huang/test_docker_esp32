pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'espressif/esp32-ci-env' 
                }
            }
            steps {
			    sh 'cd main'
                sh 'make -j4' 
            }
        }
    }
}