stage('Test') {
  parallel ubuntu-xenial: {
    node('any') {
      checkout scm
      withEnv(["OS=ubuntu-16.04"]) {
        sh 'make test'
      }
    }
  },
  debian-jessie: {
    node('any') {
      checkout scm
      withEnv(["OS=debian-8"]) {
        sh 'make test'
      }
    }
  },
}
