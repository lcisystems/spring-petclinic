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
               
                    cp target/*-SNAPSHOT.jar artifacte 
                    cd artifacte 
                    git add . 
                    git commit -m "first commit"
                    git branch -M main
                   
                    git push -u origin main

                else 
                    git clone https://github.com/lcisystems/artifacte.git
                    cd artifacte
                    git config --global user.name "lcisystems"
                    git config --global user.email "rzdin@lcisystems.com"

                    cp target/*-SNAPSHOT.jar artifacte 
                    cd artifacte 
                    git add . 
                    git commit -m "first commit"
                    git branch -M main
                 
                    git push -u origin main
                fi 
                
                '''
            }
           
        }
  }
}
