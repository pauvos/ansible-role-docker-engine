stage('Test') {
  parallel ubuntuxenial: {
    node('any') {
      checkout scm
      withEnv(["OS=ubuntu-16.04"]) {
        sh 'make test'
      }
    }
  },
  debianjessie: {
    node('any') {
      checkout scm
      withEnv(["OS=debian-8"]) {
        sh 'make test'
      }
    }
  }
}
