pipeline {
	agent {
		docker {
			image 'espressif/esp32-ci-env' 
		}
	}
			
	environment {
        IDF_PATH = "$CI_PROJECT_DIR/esp-idf"
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