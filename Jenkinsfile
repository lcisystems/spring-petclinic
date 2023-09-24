pipeline {
	agent any
    // Defined tools to build Spring Boot Java Application. 
       tools { 
                     maven 'maven' 
                     jdk 'JAVA_HOME' 
   }
  	stages {
        // Stage one build the application and makes a jar file using Maven
        stage('Build') {
             
            steps {
                sh 'mvn -B -DskipTests clean package -D v=${BUILD_NUMBER}'
            }
           
        }
  }
}
