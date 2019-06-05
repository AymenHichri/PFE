node { 
 
 def app
 checkout scm  
 
stage('Initialize') 
{ 
 def dockerHome = tool 'myDocker' 
 env.PATH = "${dockerHome}/bin:${env.PATH}" 
} 
stage('Build image') 
{ 
app = sh "docker build -t aymen2310/employee ." 
} 
stage('Push image') 
{
 docker.withRegistry('https://registry.hub.docker.com', 'dockerhub')
{
           app.push("${env.BUILD_NUMBER}")
            app.push("latest")
} 
}
 stage ("Deploy")
{
 kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig' 
}
 }
