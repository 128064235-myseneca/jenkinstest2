pipeline{
	agent any 

	stages{
		stage("clone the client"){
			steps {
				sh 'rm client -rf; mkdir client'
    			dir ('client') {
    			git branch: 'master',
    			credentialsId: 'git-credentials',
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
			
				
				echo 'the application is deploying'
				
			}

		}
	}
	post{
		always{
			
			googlechatnotification message: 'DRM Git Push Status - Author: $AUTHOR - Build Number # $BUILD_NUMBER - $BUILD_STATUS', notifyFailure: true, notifyNotBuilt: true, notifySuccess: true, url: 'https://chat.googleapis.com/v1/spaces/AAAAbmiHzsg/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=pp1vQYK9OdbJadXbIqCripBK-ClKhYbZmAs-7Ge1ZN0%3D'	
	}
	}

}
