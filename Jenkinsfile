// Jenkinsfile

pipeline {
    agent {
	dockerContainer {
		image 'python:3.10'
	}
}

    stages {
        stage('Instalar dependencias') {
            steps {
                sh 'python -m venv venv'
                sh '. venv/bin/activate && pip install --upgrade pip'
            }
        }

        stage('Pruebas unitarias') {
            steps {
                sh '. venv/bin/activate && python -m unittest test_calculator.py'
            }
        }
    }

    post {
        success {
            echo 'Pruebas completadas con éxito.'
        }
        failure {
            echo 'Error en alguna etapa de la canalización.'
        }
    }
}
