FROM anapsix/alpine-java 
LABEL maintainer="rzdin@lcisystems.com"
COPY /target/spring-petclinic-*.jar /home/spring-petclinic-*.jar 
CMD ["java","-jar","/home/spring-petclinic-*.jar"]