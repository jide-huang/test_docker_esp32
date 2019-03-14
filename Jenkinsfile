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
			    sh 'ls'
			    sh 'cd hello_world && ls && make -j4'
            }
        }
    }
}