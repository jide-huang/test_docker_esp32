pipeline {
	agent {
		docker {
			image 'voltstorage/esp32' 
		}
	}
			
	environment {
        IDF_PATH = "/var/jenkins_home/workspace/test_docker_esp32_master/esp-idf"
    }
	
    stages {
        stage('Build') { 
            steps {
				sh 'ls && pwd'
				sh 'cd esp-idf && git tag && git fetch && git checkout tags/v3.1.3'
			    sh 'git submodule update --init --recursive'
			    sh 'cd hello_world && ls && make'
            }
        }
    }
}

