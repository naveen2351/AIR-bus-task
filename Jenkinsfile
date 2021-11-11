node {
   stage('getscm') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/naveen2351/AIR-bus-task.git'
     }
   
  stage('build image'){
  sh 'docker build -t devops***/naveen:1.0 .'
}
 stage('push Docker Image'){
 withCredentials([string(credentialsId: 'DockerHubPwd', variable: 'DockerHubPwd')]) {
    sh "docker login -u devops*** -p ${DockerHubPwd}"
}
  sh 'docker push devops6060/naveen:1.0'
}
stage('Run Container'){
 sh 'docker run -p 5000:5000 -d --name naveenapp devops***/naveen:1.0'
}
stage('Check app'){
 sh 'curl http://IP:5000'
}
  
 }
