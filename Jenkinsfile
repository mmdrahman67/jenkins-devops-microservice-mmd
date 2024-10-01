//SCRIPTED
//node {
//	echo "Build"
//	echo "Test"
//	echo "Integration Test"
//}

//DECLARATIVE
pipeline {
	agent any
	stages{
		stage('Build'){
			steps{
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
		sucess{
			echo('Im awesome, I am successful')
		}
		failure{
			echo('I run, when I fail')
		}
	}
}
