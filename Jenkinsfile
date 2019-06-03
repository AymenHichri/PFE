node {
 
   
    checkout scm
    
    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    


  stage('Build image') {
      
       sh "docker build -t aymen2310/employee ."
      
  }
    stage('Push image') {
       
     docker.withRegistry('https://registry.hub.docker.com', 'dockerhub'){
       aymen2310/employee.push()
     }
      }



          stage "Deploy"{

        kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig'
          }
}
