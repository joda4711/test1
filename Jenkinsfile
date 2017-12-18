node {
   stage('Checkout') {
      echo "Checkout ${env.BRANCH_NAME}"
      checkout scm
   }

   stage("Build ${env.BRANCH_NAME}") {
      sh "make clean && make all"
      archiveArtifacts artifacts: 'foo', fingerprint: true
   }

   stage("Copy NSIM") {
     copyArtifacts filter: 'nsim', fingerprintArtifacts: true, projectName: 'Simulator-Build', selector: lastSuccessful()
   }

   stage("Run tests") {
     sh "./runtest.py --config=testconfig.json --xml=output.xml --run=\"./nsim --hw f0 --flashfile %q --testcase %m %f\""
   }
}