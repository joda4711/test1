node {
   stage('Checkout') {
      echo "Checkout ${env.BRANCH_NAME}"
      checkout scm
   }

   stage("Build ${env.BRANCH_NAME}") {
      sh "make clean && make all"
      archiveArtifacts artifacts: 'foo', fingerprint: true
   }

    if("${env.BRANCH_NAME}" == "master") {
        stage("Run tests") {
            sh "./foo"
        }
    }
}
