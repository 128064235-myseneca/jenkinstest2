
pipeline{
	agent any 

	stages{
		stage("clone the client"){
			steps {
				sh 'rm client -rf; mkdir client'
    			dir ('client') {
    			git branch: 'master',
    			credentialsId: '1',
   				url: 'https://github.com/joshi-shubham/jenkinsfronttest.git'
				}
  			}
		}
		
		stage("build"){
	
			
			steps{
				echo 'the application is building'
			}
		}
		
			
			
		
		stage("deploy"){
			steps{
				sh 'docker-compose build'
				sh 'docker-compose up -d'
			}
		}
	}

}	