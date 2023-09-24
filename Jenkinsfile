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
                sh '''
                mvn package
                cd target
                ls -la 
                
                '''
            }
           
        }
        stage('Publish Artifact') {
             
            steps {
                sh '''
                dir=artifacte
                if [ -d "$dir" ] 
                then
                
                    cp target/spring-petclinic-3.1.0-SNAPSHOT.jar artifacte 
                    cd artifacte 
                    git config --global --edit
                    git status 
                    git add . 
                    git commit -m "adding artifact"
                    git push
                else 


                    git clone https://github.com/lcisystems/artifacte.git


                    cp target/spring-petclinic-3.1.0-SNAPSHOT.jar artifacte 
                    cd artifacte 
                    git config --global --edit
                    git status 
                    git add . 
                    git commit -m "adding artifact"
                    git push
                fi 
                
                '''
            }
           
        }
  }
}
