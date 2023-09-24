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
                    "
                    cp target/spring-petclinic-3.1.0-SNAPSHOT.jar artifacte 
                    cd artifacte 

                    git status 
                    git add . 
                    git commit -m "adding artifact"
                    git push
                else 

                    git config --global --add safe.directory '/var/lib/jenkins/workspace/USDA poc/artifacte'
                    git clone https://github.com/lcisystems/artifacte.git
                    cd artifacte
                    git config --global user.name "lcisystems"
                    git config --global user.email "rzdin@lcisystems.com

                    cp target/spring-petclinic-3.1.0-SNAPSHOT.jar artifacte 
                    cd artifacte 
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
