node {

    checkout scm


  stage('Build image') {
    
      app = docker.build("kavisuresh/employee") 
  }
    
    stage('Test image') {
   
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

      stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
      }

          stage "Deploy"{

        kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig'
          }
}
