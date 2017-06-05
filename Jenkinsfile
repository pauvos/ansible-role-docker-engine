stage('Test') {
  parallel ubuntuxenial: {
    node {
      checkout scm
      withEnv(["OS=ubuntu-16.04"]) {
        sh 'make'
      }
    }
  },
  debianjessie: {
    node {
      checkout scm
      withEnv(["OS=debian-8"]) {
        sh 'make'
      }
    }
  },
  centos7: {
    node {
      checkout scm
      withEnv(["OS=centos-7"]) {
        sh 'make'
      }
    }
  },
  fedora24: {
    node {
      checkout scm
      withEnv(["OS=fedora-24"]) {
        sh 'make'
      }
    }
  }
}
