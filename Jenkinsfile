node {
   stage('Checkout') {
      echo "Checkout ${env.BRANCH_NAME}"
      checkout scm
   }

   stage("Build ${env.BRANCH_NAME}") {
      sh "make clean && make all"
      archiveArtifacts artifacts: 'foo', fingerprint: true
   }
}