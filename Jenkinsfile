node { 
 
checkout scm  
 
stage('Initialize') 
{ 
 def dockerHome = tool 'myDocker' 
 env.PATH = "${dockerHome}/bin:${env.PATH}" 
} 
stage('Build image') 
{ 
sh "docker build -t aymen2310/employee ." 
sh "docker-compose up"
} 
 
 stage ("push")
 {
           sh('docker login -u aymen2310 -p 231096')
            sh('docker push aymen2310/employee')
 }

 stage ("Deploy")
{
 kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen-kubeconfig',enableConfigSubstitution: true
}
 }
