
pipeline{
	agent any 

	stages{
		stage("build"){
	
			
			steps{
				echo 'the application is building'
			}
		}
		
			
			
		}
		stage("deploy"){
			steps{
				sh 'docker-compose build'
				sh 'docker-compose up'
			}
		}
	}

}	