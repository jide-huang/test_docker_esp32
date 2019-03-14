pipeline {
	agent {
		docker {
			image 'espressif/esp32-ci-env' 
		}
	}
			
	environment {
        IDF_PATH = "/esp-idf"
    }
	
    stages {
        stage('Build') { 
            steps {
			    sh 'ls'
			    sh 'cd hello_world && ls && make -j4'
            }
        }
    }
}