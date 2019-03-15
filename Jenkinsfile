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
				sh 'cd esp-idf && git tag && git fetch && git checkout tags/v3.1.3'
			    sh 'git submodule update --init --recursive'
				sh 'source esp-idf/tools/ci/configure_ci_environment.sh && time ./esp-idf/tools/ci/get-full-sources.sh'
			    sh 'cd hello_world && ls && make'
            }
        }
    }
}

