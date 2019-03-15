pipeline {
	agent {
		docker {
			image 'espressif/esp32-ci-env' 
		}
	}
			
	environment {
        IDF_PATH = "/var/jenkins_home/workspace/test_docker_esp32_master/esp-idf"
    }
	
    stages {
        stage('Build') { 
            steps {
				sh 'ls && pwd'
				sh 'cd esp-idf && git fetch && git checkout release/v3.1'
			    sh 'git submodule update --init --recursive'
			    sh 'cd hello_world && ls && make -j4'
            }
        }
    }
}

