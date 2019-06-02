node {

    
    checkout scm
    
    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    


  stage('Build image') {
      
      
      sh "docker build -t kavisuresh/employee -f Dockerfile"
      
  }


      stage('Push image') {
       sh "docker push kavisuresh/employee "
      }

          stage "Deploy"{

        kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig'
          }
}
