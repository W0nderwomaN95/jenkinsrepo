node {
    def app

    stage('clone repo') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("manasareddybethi/jenkinsrepo")
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}