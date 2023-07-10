FROM openjdk:8
EXPOSE 8083
ADD target/devops-integration.jar devops-integration.jar
CMD ["bundle",  "exec", "rails", "server", "-e", "production"]
ENTRYPOINT ["java","-jar","/devops-integration.jar"]