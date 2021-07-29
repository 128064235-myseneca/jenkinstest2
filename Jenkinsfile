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
			script{
				def commitSha = sh(returnStdout: true, script: "git log -1 | grep Author | awk '{print \$2}' ").trim()
				echo "${commitSha}"
        
			
			
			googlechatnotification message: 'DRM Git Push Status - Author: ${commitSha} - Build Number # $BUILD_NUMBER - $BUILD_STATUS', notifyFailure: true, notifyNotBuilt: true, notifySuccess: true, url: 'https://chat.googleapis.com/v1/spaces/AAAAbmiHzsg/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=pp1vQYK9OdbJadXbIqCripBK-ClKhYbZmAs-7Ge1ZN0%3D'	
			}
		}
	}

}
