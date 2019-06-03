node {
 
   
    checkout scm
    
    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    


  stage('Build image') {
      
      def customimage= docker.build("aymen2310/employee:${env.BUILD_TAG}", '.')
      
  }


      stage('Push image') {
       
       docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
       customImage.push()
       }

       
      }

          stage "Deploy"{

        kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig'
          }
}
