node {
    def app

    stage('clone repo') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("")
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com','docker-hub-creds') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest"
            )
        }
    }
}