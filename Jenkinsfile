CODE_CHANGES = getGitChanges()
pipeline{
	agent any 

	stages{
		stage("build"){
			when{
				expression{
					CODE_CHANGES == true
				}
			}
			steps{
				echo 'the application is building'
			}
		}
		stage("test"){

			steps{
				echo 'the application is testing'
			}
			
			
		}
		stage("deploy"){
			steps{
				echo 'the application is deploying'
			}
		}
	}

}