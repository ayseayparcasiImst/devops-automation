FROM openjdk:8
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
<<<<<<< HEAD
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
=======
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
>>>>>>> branch 'master' of https://github.com/ayseayparcasiImst/devops-automation.git
