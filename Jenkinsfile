//SCRIPTED
//node {
//	echo "Build"
//	echo "Test"
//	echo "Integration Test"
//}

//DECLARATIVE
pipeline {
	//agent any
	agent {docker { image 'maven:3.6.3'}}
	stages{
		stage('Build'){
			steps{
				sh 'mvn --version'
				echo "Build"
			}
		}
		stage('Test'){
			steps{
				echo "Test"
			}
		}
		stage('Integration Test'){
			steps{
				echo "Integration Test"
			}
		}
	}
	
	post{
		always{
			echo('Im awesome, I run always')
		}
		success{
			echo('Im awesome, I am successful')
		}
		failure{
			echo('I run, when I fail')
		}
	}
}
