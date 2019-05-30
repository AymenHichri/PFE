node {

    checkout scm

    env.DOCKER_API_VERSION="1.23"
    
    sh "git rev-parse --short HEAD > commit-id"

    tag = readFile('commit-id').replace("\n", "").replace("\r", "")
    appName = "frontend"
    imageName = "kavisuresh/employee:latest"
    env.BUILDIMG=imageName

    stage "Build"
    
        sh "docker build -t kavisuresh/employee -f Dockerfile"
    
    stage "Push"

        sh "docker push kavisuresh/employee"

    stage "Deploy"

        kubernetesDeploy configs: "*.yaml", kubeconfigId: 'aymen_kubeconfig'
