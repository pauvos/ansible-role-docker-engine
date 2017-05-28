stage('Test') {
  parallel ubuntuxenial: {
    node {
      checkout scm
      withEnv(["OS=ubuntu-16.04"]) {
        sh 'make test'
      }
    }
  },
  debianjessie: {
    node {
      checkout scm
      withEnv(["OS=debian-8","pwd=${pwd}"]) {
        sh 'make test'
      }
    }
  }
}
