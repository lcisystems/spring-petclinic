pipeline {
	agent any
    // Defined tools to build Spring Boot Java Application. 
       tools { 
         maven 'Maven' 
   }
  	stages {
        // Stage one build the application and makes a jar file using Maven
        stage('Build') {
             
            steps {
                sh 'mvn package'
            }
           
        }
  }
}
