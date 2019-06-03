node {
 
   
    checkout scm
    
    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    


  stage('Build image') {
      
       sh "docker build -t aymen2310/employee ."
      
  }
    stage('Docker login') {
       
       docker.withRegistry('https://registry.hub.docker.com', 'dockerhub')
    
      }
 
 stage ('Push'){

 sh "docker push aymen2310/employee"   
 }


          stage "Deploy"{

        kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig'
          }
}
