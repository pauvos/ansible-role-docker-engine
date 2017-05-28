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
      withEnv(["OS=debian-8"]) {
        sh 'make test'
      }
    }
  },
  centos7: {
    node {
      checkout scm
      withEnv(["OS=centos-7"]) {
        sh 'make test'
      }
    }
  }
}
