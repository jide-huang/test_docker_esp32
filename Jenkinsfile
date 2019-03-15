pipeline {
	agent {
		docker {
			image 'voltstorage/esp32' 
		}
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

