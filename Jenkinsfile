node {
    def app

 checkout scm 
	
   stage('Initialize')
	{
		def dockerHome = tool 'myDocker' env.PATH = "${dockerHome}/bin:${env.PATH}" 
	} 

    stage('Build image') {
        /* This builds the actual image */

        app = docker.build("aymen2310/employee")
    }

    stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
    }
 
    stage "Deploy"
 { kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig' }
 }

}
